# Velocity XL-RG
#
# Gary Neely aka 'Buckaroo'
#


aircraft.livery.init("Aircraft/Velocity-XL-RG/Models/Liveries");	# Set up the livery machine


								# Install strobe timer and controller
strobe_switch = props.globals.getNode("/systems/electrical/outputs/lights-strobes", 1);
aircraft.light.new("/sim/model/lighting/strobe", [0.2, 2], strobe_switch);
								# Pass strobe timer over MP (aliasing the timer value doesn't
								# seem to work, so a listener is used). Use MP var int[2]
var strobeState		= props.globals.getNode("sim/model/lighting/strobe/state[0]", 1);
var MPstrobeState	= props.globals.getNode("/sim/multiplay/generic/int[2]", 1);
setlistener(strobeState, func {
  if (strobeState.getBoolValue())	{ MPstrobeState.setValue(1) }
  else					{ MPstrobeState.setValue(0) }
});

								# Set up screen message windows
var Velocity_screenmssg		= screen.window.new(nil, -150, 2, 5);
var Velocity_screenmssg2	= screen.window.new(nil, -180, 2, 5);


								# Doors
var Velocity_door_left	= aircraft.door.new("/controls/doors/left", 1);
var Velocity_door_right	= aircraft.door.new("/controls/doors/right", 1);

var Velocity_doors_left = func {
  if (getprop("/controls/doors/left/position-norm")) {		# Can always close an open door
    Velocity_door_left.toggle();
    return 0;
  }
  if (getprop("/controls/doors/left/locked")) {
    return 0;
  }
  if (getprop("/gear/gear[1]/wow")) {				# At least be on the ground
    Velocity_door_left.toggle()
  }
  else {
    Velocity_screenmssg.fg = [1, 1, 1, 1];
    Velocity_screenmssg.write("What, without a parachute?!");
  }
}
var Velocity_doors_right = func {
  if (getprop("/controls/doors/right/position-norm")) {
    Velocity_door_right.toggle();
    return 0;
  }
  if (getprop("/controls/doors/right/locked")) {
    return 0;
  }
  if (getprop("/gear/gear[1]/wow")) {
    Velocity_door_right.toggle()
  }
  else {
    Velocity_screenmssg.fg = [1, 1, 1, 1];
    Velocity_screenmssg.write("A little voice tells you that's not a good idea...");
  }
}



									# Magneto settings:
var mag_left	= props.globals.getNode("/controls/switches/mag-left");
var mag_right	= props.globals.getNode("/controls/switches/mag-right");
var magnetos	= props.globals.getNode("/controls/engines/engine[0]/magnetos");

setlistener("/controls/switches/mag-left", func {
  var mag = 0;
  var left = mag_left.getValue();
  var right = mag_right.getValue();
  if    (left and !right) 	{ mag = 1; }
  elsif (!left and right)	{ mag = 2; }
  elsif (left and right)	{ mag = 3; }
  magnetos.setValue(mag);
});
setlistener("/controls/switches/mag-right", func {
  var mag = 0;
  var left = mag_left.getValue();
  var right = mag_right.getValue();
  if    (left and !right) 	{ mag = 1; }
  elsif (!left and right)	{ mag = 2; }
  elsif (left and right)	{ mag = 3; }
  magnetos.setValue(mag);
});

									# Disabled keyboard engine starter message
									# Disabling the keys avoids writing code to
									# keep the switches synced to magneto settings
var magnetos_null = func {
  Velocity_screenmssg.fg = [1, 1, 1, 1];
  Velocity_screenmssg.write("Use the overhead magneto switches.");
}


									# Engine starter:
									# Engage switch, start engine if volts on bus
#var starter_used	defined in Optica_ammeter.nas
var engine_starter = func(i) {						# i=starter value 1|0
  setprop("/controls/switches/starter",i);
  if (getprop("/systems/electrical/outputs/starter")) {			# If starter has power
    setprop("/controls/engines/engine[0]/starter",i);
    #starter_used.setValue(600);					# See Optica_ammeter.nas
  }
}

									# Disabled keyboard engine starter message
var starter_null = func {
  Velocity_screenmssg.fg = [1, 1, 1, 1];
  Velocity_screenmssg.write("Use the overhead starter switch.");
}


									# Revise standard landing gear controller
									# to disallow retracting gear on ground
controls.gearDown = func(i) {
  if (i < 0) {
    if(!getprop("gear/gear[1]/wow")) {
      setprop("/controls/gear/gear-down",0);
    }
  }
  elsif (i > 0) {
    setprop("/controls/gear/gear-down",1);
  }
}

#var gearToggle = func {
#  print("Hello.");
#  gearDown(getprop("/controls/gear/gear-down") > 0 ? -1 : 1);
#}


									# Stall warning based on AoA; Wing crit AoA is ~16+,
									# canard incidence is 3 degrees greater, give an extra
									# three degrees notice gives about 10 degrees for warning
var stall_check = func {
  if (getprop("orientation/alpha-deg") > 10 and !getprop("gear/gear[1]/wow")) {
    setprop("sim/alarms/stall-warning",1);
  }
  else {
    setprop("sim/alarms/stall-warning",0);
  }
  settimer(stall_check, 0);
}


# Other stuff:


								# Establish which settings are saved on exit
var Velocity_Savedata = func {
  aircraft.data.add("/controls/lighting/edm-norm");
  aircraft.data.add("/controls/lighting/panel-norm");
  aircraft.data.add("/instrumentation/oat/mode");		# Temp reporting mode C/F
  aircraft.data.add("/sim/Velocity/use-shadow");		# Usage of ground shadow
}



								# Initialization:
setlistener("/sim/signals/fdm-initialized", func {
								# Start the fuel system. The Velocity uses a customized
								# fuel routine. See Velocity_fuel.nas
  FuelInit();
  EngineInit();							# See Velocity-engines.nas
  Velocity_Savedata();
  SoundInit();
  stall_check();
});


								# Fast start-up for testing purposes
var QuickStart = func{
  #setprop("controls/fuel/selected-tank",0);
  setprop("engines/engine[0]/out-of-fuel",0);
  setprop("controls/switches/battery",1);
  setprop("controls/fuel/selected-tank",0);
  setprop("controls/switches/fuelpump",0);
  setprop("engines/engine[0]/fuel-press",31);
  setprop("controls/switches/mag-left",1);
  setprop("controls/switches/mag-right",1);
  setprop("controls/engines/engine[0]/magnetos",3);
  setprop("controls/engines/engine[0]/throttle",0);
  setprop("controls/engines/engine[0]/mixture",3);
  setprop("engines/engine[0]/rpm",850);
  setprop("engines/engine[0]/chttempf",300);
  setprop("engines/engine[0]/oil-visc",0);
  setprop("engines/engine[0]/oil-press",75);
  setprop("engines/engine[0]/oiltempc",89);
  setprop("engines/engine[0]/running",1);
  setprop("controls/switches/alternator",1);
  setprop("controls/switches/avionics",1);
}


#QuickStart();