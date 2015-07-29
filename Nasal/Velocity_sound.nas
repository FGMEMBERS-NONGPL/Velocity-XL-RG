# Velocity XL-RG
#
# Gary Neely aka 'Buckaroo'
#
# Sound controller routines
#
# Currently controls:
#   diminished engine noise as the aircraft recedes from ground reflection
#   engine sound based on manifold pressure
#   rough engine sounds when over-rich


var sound_rough_timer = 0;						# Signals play and timer for intermittent rough engine noise


##############
# Primary sound loop
##############

var sound_update = func {

  var sound_agl = getprop("/position/gear-agl-m");			# For diminished engine noise as we recede from ground reflections
  if (sound_agl == nil) { sound_agl = 0; }
  elsif (sound_agl > 15) { sound_agl = 15; }				# max effect at 15m
  elsif (sound_agl < 0)  { sound_agl = 0; }
  setprop("/sim/Velocity/sound-agl",sound_agl);
  sound_agl = 1 - sound_agl * 0.024;					# Factor effect by .024 (0-0.36 volume reduction)

  var mp = getprop("/engines/engine/mp-inhg") * 0.0167 + 0.5;		# Crude re-scaling MP value for sound;
  var volume_engine = mp * sound_agl;
  if (volume_engine > 1) { volume_engine = 1; }
  if (volume_engine < 0) { volume_engine = 0; }
  setprop("/sim/Velocity/sound/volume-engine", volume_engine);
									# Rough engine noises:
									# Currently initiates at over-rich mixtures of > 0.11 AFR
									# Could do something similar for too-lean mixtures
  if (!sound_rough_timer) {						# If roughness not already initiated
    var afr = getprop("/engines/engine/afr");
    if (afr > 0.11) {							# Engine running over-rich?
      var chance = (afr - 0.11) * 100;					# Chance that rough sound will occur
      if (rand() < chance) {
        sound_rough_timer = (afr-0.11)*500*rand();			# 0 to 2 second duration
        if (afr > 0.12) {						# Set rough sound volume:
          setprop("/sim/Velocity/sound/volume-engine-rough", 1);
        }
        else {
          setprop("/sim/Velocity/sound/volume-engine-rough", 50*afr-5);	# Volume level 0.5 - 1
        }
        sound_rough_loop();						# Initiate rough noise
      }
    }
  }

  settimer(sound_update, 0);
}


##############
# Rough engine player
# The idea is to play the rough engine sound intermittently. As we approach a certain rich mixture
# value the sound plays longer and with shorter intervals until it's nearly continuous.
# I have little idea what a rough engine sounds like or when it kicks in; I've set it to start at
# air-fuel ratios of 0.11 and become continuous at 0.12. Feel free to abuse my thinking here.
##############

var sound_rough_loop = func {
  sound_rough_timer -= 0.1;						# Decrement sound timer
  if (sound_rough_timer > 0) {						# Continue sound until timed-out
    settimer(sound_rough_loop,0.1);
  }
  else {								# Timer done:
    setprop("/sim/Velocity/sound/volume-engine-rough", 0);		# Turn off sound
    var afr = getprop("/engines/engine/afr");
    if (afr <= 0.111) { afr = 0.111; }
    sound_rough_timer = (0.121-afr)*500*rand();				# Initiate brief silent period
    sound_silent_loop();
  }
}

var sound_silent_loop = func {
  sound_rough_timer -= 0.1;						# Decrement sound timer
  if (sound_rough_timer > 0) {						# Continue until timed-out
    settimer(sound_silent_loop,0.1);
  }
  else {
    sound_rough_timer = 0;
  }
}


var SoundInit = func {
  settimer(sound_update, 1);					# Give a few seconds for environment vars to initialize
}
