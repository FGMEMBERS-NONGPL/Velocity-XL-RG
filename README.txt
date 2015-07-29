Velocity XL RG

This model represents the retractable gear option for the XL version of the Velocity. It is a somewhat higher-end Velocity, presumed to be expertly built, powered by a Lycoming IO-540-K 300 HP engine. To build the model I have relied primarily on the Velocity Build Manual, several builder blogs, and photos of the Velocity. Most dimensions have been cross-checked to be fairly accurate, but some dimensions may be off slightly. Given that the Velocity is almost all compound curves, it was a very difficult modeling project, one I nearly abandoned. But my professional work gave me considerable modeling experience in the intervening year, and the Build Manual and the blogs gave me many needed dimensions, and others were carefully interpolated using photos. I think the result is pretty close to true. It is not a light-weight resource model, but it should not trouble most Flightgear users.

I chose the retractable gear option because I felt most simmers would want it. It's fun to play with, looks good in the air, and maybe gives you a little more speed. But if I were building a real Velocity, I would choose the fixed-gear option. It greatly simplifies the build, gives more internal room, greater fuel capacity (the main wheel wells sit right in the middle of the fuel tanks), less chance of a failure, no chance of not having your gear down on landings, and a big break in insurance costs. And on the ground, the landing gear looks much more cool with wheel fairings.

This model is 99%+ my work and effort. It was made using Blender, Photoshop, and Inkscape. The model is currently licensed under Creative Commons "CC-BY-NC-SA". What isn't my work comes from GPL Flightgear repository planes or other freely available sources. Please note that this model has no relationship with the model that currently exists within the Flightgear repository.

I began this effort because, well, the Velocity is way cool and this is my only way to at least partly experience one. 


Quick Start

Set fuel to 'Both'
Turn on the master battery
Turn on the fuel boost pump
Turn on the left and right magneto switches
After fuel pressure comes up, use the starter switch to start the engine
Turn off fuel boost pump (optional)
Turn on alternator switch
Turn on avionics switch
Set your altimeter to the proper pressure
Check your heading gyros and set as necessary
Set elevator trim as desired (the Velocity menu features a suggested setting)
Release parking break when ready


Steering and Brakes (READ THIS!)

The Velocity nose wheel casters and is not steerable. Steering is accomplished by differential braking. This makes the Velocity handle very tightly on the ground, but requires attention on takeoff until the rudders are effective.

The standard Velocity build couples braking to rudder deflection. The rudder pedals in this configuration are simple pipe constructs without toe-brakes. Many builders install a toe-brake option to de-couple rudder and braking, and I have done the same with the model, partly because it let me model the spiffy cast aluminum pedals with the cool 'Velocity' logo. :)


Weight and Balance

The plane's default load is light, with a single pilot, some nose ballast and a modest fuel load, where the flight model is configured for the maximum load. This makes the default experience very nimble and responsive flying, which is what I figure most people will want. Use the Equipment menu to experience the more typical real-world load options.

The real Velocity is fairly sensitive to weight and balance. It's critically important not to have the CG too far back, which can result in flat stalls or other not so good behaviors. Changes to the Velocity's wings have largely eliminated the flat stalls, but careful attention to weight and balance is still essential for safe flying. The model's CG and weight have been configured using real-world Velocity weight and balance worksheets. See the file 'velocity-xl-rg-yasim.xml' for more notes and information.


Fuel

The Velocity has two 33 gallon tanks located in the leading half of the inboard wing segments known as the 'strakes'. Each tank is essentially a hollowed-out portion of the strake, provided with baffles and coated with fuel-proof epoxy. A corresponding sight gauge to either side of the rear seats indicates the load of each tank. A 4 gallon sump tank sits low against the firewall behind the rear seats, though only 2.5 gallons are usable. Note that the main panel fuel instrument shows the capacity of the two main tanks-- there is no readout for the sump. If your two main tanks are showing empty, you'd better have an airfield in sight.

The base Velocity build has a very simple fuel feed. Both tanks feed the sump which feeds the engine with no valves or selectors. Like some Velocitiy builders, I chose to add a fuel control switch to allow left-right-both-off settings. I did this because there's a good chance a DAR will request installation of a fuel cutoff switch, and the ability to select tanks adds options for in-flight balancing.

You need the boost pump only for cold engine starting. After fuel pressure has come up and the engine is started, turn it off, otherwise it will cost you additional fuel. You might wish to leave it on during the early stages of your climb and turn it on for approach. The boost pump can be used to further richen the mixture if cylinder temps get too hot, but at the expense of extra fuel. Mixture is auto-enrichened at high power settings, so you don't really need this on for take-off.


Airbrakes

The Velocity's twin vertical stabs have one-way rudders; travel is outboard for each, meaning only one will exhibit deflection at any given time. Because of this both rudders can be deployed simultaneously, deflecting each rudder outboard as a form of speed braking. The effect is relatively weak but helpful. Expect a slight pitch-up effect when using the rudders in this way.

Since rudders can be deployed independently, the rudder pedals are not coupled in the standard Velocity build. This may not work with many rudder pedal sets, where the pedals pivot about a center point. In this case, you can use the ctrl-b function to toggle both rudders to maximum deflection. Note that rudder control is effectively disabled while set this way. I've placed an indicator light on the main panel to display this condition. This light isn't a real Velocity indicator, only a sim aid.

Some Velocity builds incorporate a bellyflap speedbrake for more effective airbraking. I chose not to do this, as it simplifies the model and requires the pilot to think and plan approaches a little more.


Flying

Takeoff: Lift the nose at 60-70 kts, then rotate at 75, 80-85 if operating at heavy gross weights. Trimming for takeoff helps. Try not to touch the brakes too much to steer on the takeoff roll. The rudders will become effective above 25 kts. Don't rotate too far especially with a light load (aft CG), as you could place the CG aft of the main gear and tip the Velocity on its tail. (In the real Velocity you risk prop damage.) Never rotate the canard above the horizon. 

The Velocity is a pusher-configuration, so expect propeller effects to be reversed from what you might be accustomed to. Propeller effects are fairly strong, so expect to use significant roll trim.

Climb: Optimum climb is 100 knots. Best climb is 80, and for optimum visibility and cooling, 110. Climb with WOT (wide open throttle), reducing RPM as desired and leaning as desired.

Normal flight is responsive and free of any quirks. I am not a pilot and have never been in a Velocity and so I make no claim that the model flies true to the real thing, but the model conforms fairly closely to the pilot's handbook. If you stay within normal flight profiles it should not do anything peculiar.

The model features the Lycoming IO-540-K 300 HP engine. With the default light load, this gives you a lot of power to play with, and is necessary to achieve the top end speeds. Note that while the design is capable of very high speeds in mild air, many Velocities don't achieve those speeds. Top speed depends on flight conditions, engine, the quality of the build, the propeller and pitch settings, and other factors.

For cruise settings, I recommend running your Velocity at WOT and adjust power settings using mixture and propeller controls. Remember to turn the fuel pump off. You should get your best economy this way. See the engine section for tips on power settings.

Plan your descent well in advance of your destination. The Velocity is very slick and will take a while to shed speed. Although the simulation won't care, it's recommended that you reduce power gradually in increments of 1" every minute or so in order to minimize possible negative effects on your engine.

Approach: Enter the pattern at 85-90 kts, approach at 80. Flare slightly and land at 70-75. Add 5 knots for heavy loads. This is a very clean airplane-- don't approach too fast or you could easily double your runway needs. Again, plan your approach well in advance or you may need to go-around due to excessive speed. (This advice is straight out of the pilot's handbook for those who might be thinking this is an FDM configuration problem-- it's not. The Velocity is very slippery.) Use the rudder-brake to help control your descent, but remember to unlock it before crossing the threshold. Fly the aircraft down to the runway-- don't try to stall the aircraft to a landing or use excessive flare.

Stall is listed at 65 kts, but varies considerably with the build and the load. The handbook reports the aircraft is manageable and responsive down to 60 kts with lighter loads. Best glide may be around 100 kts, but I haven't carefully verified that.

Due to the canard configuration, a "stall" in the Velocity is more like a nose bobbing motion, where you can no longer keep the nose up. With the stick fully back in low-speed flight, you will reach a point where the elevator begins to stall before the wing, dropping the nose and picking up lift again such that the nose begins to come up. You may notice a slight oscillation in pitch when this begins to happen, called "pitch bucking". This video demonstrates the effect: http://www.youtube.com/watch?v=zeTjPPpVtuU  Watch carefully for the pitching oscillations. For another demonstration: http://www.youtube.com/watch?v=M-dGCUsZvDY, at about 5:11 into the video.

Because the aircraft has small tires and an aft-mounted propeller, the Velocity is not recommended for rough or grass fields. The Velocity is also not recommended for short fields due to its relatively long runway needs.


Avionics

Comm, Nav and ADF function as you would expect. Nav 1 (the top radio) is linked the the RMI in the bottom left corner. Nav 2 (the 2nd radio down) is linked to the CDI, bottom center. The ADF receiver (3rd radio down) operates on the RMI and the ADF. The ADF is superfluous, but is present for practice with such older instruments.

The audio board currently doesn't do much except provide marker beacon lights and the ability to disable the marker beacon receiver.

The transponder has no use within Flightgear-- Flightgear ATC's have their own gadgets to determine your location, but it's there if you want to emulate procedures.

For more on the avionics, see 'README_avionics.txt'


Engine Modeling

This model Velocity features a new and experimental engine simulation. I've tossed out most of the YASim values and created my own. The system is based on maintaining reasonably correct air-fuel ratios combined with tabular data for engine temperatures and other information. The result allows you to find best power or best economy settings while keeping your cylinder temps reasonable.

The EDM (Engine Data Management) instrument is very loosely like a JP Instruments EDM. Its main function is to report EGT and CHT values for engine cylinders. I've only just begun building this device so currently it has little functionality other than some basic reporting. The EGT and CHT numbers report a kind of average value, though the individual bars do report true to their cylinders. I've taken some liberties with the size and positioning of the readouts for legability. Personally I'd prefer nice big analog gauges, but this thing packs a lot in a little space, at the expense of squinting a bit.

Note that oil temperature reads in degrees Centrigrade, while other temps are degrees Fahrenheit.

Play with the the power and mixture controls while watching EGT, the HP estimate, and fuel flow to find your best power or economy settings at your altitude. Best economy is approximately 50 degrees lean of peak EGT, while best power is about 80 degrees rich of peak EGT. The CHT values will tell you when you're getting into troubling regions. The default cylinder temperature ranges are set very conservatively so you shouldn't have any problems; just keep CHT's out of the red. Remember that EGT responds nearly instantaneously, while cylinder temps take a while to build up or cool down. The engine has an auto-rich feature, so as you push the throttle in beyond 65% you will also begin richening the mixture.

A real pilot will likely find the numbers off a bit-- my numbers are based on some real data, some data for similar engines, and some guesses. I have no experience with these engines and what their temps do at various power settings. If you have experience with the Lycoming IO-540-K or similar and have better numbers, feel free to adjust the temperature tables found in Systems/Velocity-XL-RG-engine.XML; if you send me your recommended changes, I'll use them. See that file and the related nasal script for more information.


The Shadow

I experimented with a simple object-based shadow to provide a reference when taking off and landing in chase view. It's enabled at elevations of less than 100m, when gear is down, and the sun is reasonably up. It works tolerably well for its purpose, especially when the sun is well up since it doesn't move with the sun (not worth the effort right now). If you don't like the shadow, simply disable it using the Velocity menu option. Your setting will be saved if you use the Flightgear exit option.


Livery-Making

The basic model includes four paint schemes, and I provide a livery-makers kit with PSD files for the cabin and exterior paint. Note that a Velocity is rarely painted any color but white except for trim and registration markings, because the composite construction is vulnerable to high temperatures from solar heating. If you value realism, stick with white or light colors for horizontal flight surfaces and the dorsal portion of the fuselage.

The default Blue-and-Gold scheme is a low-res 1024x1024 livery meant to be multiplayer-friendly (lighter resource, faster loads). The White scheme is also low-res (it doesn't really need to be higher). The package also includes a hi-res 2048x2048 version of the Blue-and-Gold scheme. The livery kit includes the PSD for the 2048 resolution.


Other Stuff

The three NACA scoops on the upper aft cabin are two engine cooling intake ducts, and a smaller cabin air intake. The engine cooling outlets are located to either side of the propeller. On the left side of the nose is another NACA scoop, this one is the intake for the secondary engine oil cooler (which also provides cabin heat). Below this and aft of the nose gear doors is the exhaust for the oil cooler. Some Velocity builds have an intake on the right side of the nose for a cabin air intake, and some have additional intakes in the engine cowl, probably for oil coolers and/or revised air intakes.

Those familiar with the aircraft may notice the lack of cowl retaining screws. I learned some builders create a retaining flange on the forward cowl that slips under the fuselage skin just aft of the firewall. That holds down the forward section. On the aft cowl, standard hardware hinges are fixed inside the cowl, half the hinge on the upper cowl, the other half on the lower cowl. They mate together perfectly, and the removable hinge pins holds the two hinge halves and therefore the cowl halves together. It's simple, hidden from view, has no screws to come loose and hit the prop, and looks clean. I thought it amazingly clever, and decided to assume my model uses that technique. And it saves me from exactly placing those damned screws.

For more notes about the model, see the YASim configuration file and the nasal script files.


Known Problems and To-do Lists:

A few external details are missing. The 'sparrow strainer' which assists trimming the elevator at higher speeds, and elevator counterweights, which I simply forgot to model. They're hard to see anyway, so it's not a big deal. Inside, the rudder cables that run to the pedals are missing, though unless you know what to look for, you'd never notice.

The engine EDM is not complete. Since this is a complicated feature-rich device, this will likely take some time.

Acknowledgments and Sources

Thanks to Jacob "Tuxklok" Burbach, Peter "Farmboy" Brown, Lanny "Someguy" Chambers, Wolfram "Yakko" Gottfried for flight testing, feedback and encouragement. Special thanks to Wolfram for his help on sounds.

Information for the model came from very many sources, and often had to be pieced together from a combination of sources. I have a significant collection of photographs and a few articles, including the full build manual and the flight manual. Several blogs were particularly helpful: Mark Riley, http://marksvelocity.blogspot.com/, and Don Johnston, http://www.velocity-xl.com/blog/. Without the photographs and details provided by these builders, I could not have achieved the degree of accuracy that made this project worthwhile.

More thanks go to John Deakin's series of articles on AVweb. Mr. Deakin is a highly experienced pilot with a colorful history, having flown with "Air America" and having been a 747 captain for JAL. His "Pelican's Perch" series of articles is a must-read for anyone interested in aviation. His no-nonsense style makes difficult topics easy even for non-pilots like myself, and the engine articles were my primary source of understand for basic engine operation. Check his writings out at http://www.avweb.com/news/pelican/list.html.

Gary "Buckaroo" Neely
Dec 2011
updated Dec 2013



