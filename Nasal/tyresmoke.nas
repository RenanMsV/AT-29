# Generic tyre smoke http://wiki.flightgear.org/Howto:Implement_generic_tyre_smoke
#============================ Tyre Smoke ===================================
aircraft.tyresmoke.new(0, 1, 0.05, 0);
aircraft.tyresmoke.new(1, 1, 0.05, 0);
aircraft.tyresmoke.new(2, 1, 0.05, 0);
#============================ Rain ===================================
aircraft.rain.init();
# == making the timer ==
var raintimer = maketimer(0,
  func(){
      aircraft.rain.update();
  }
);
# == fire it up ===
raintimer.start();
# end