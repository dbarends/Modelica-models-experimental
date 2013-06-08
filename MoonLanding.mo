model MoonLanding
  import Core;
  parameter Real force1 = 36350;
  parameter Real force2 = 1308;
  parameter Real thrustEndTime = 210;
  parameter Real thrustDecreaseTime = 43.2;
  Core.CelestialBody moon(name = "moon", mass = 7.382e+22, radius = 1738000.0);
  Core.Rocket apollo(name = "apollo12", mass(start = 1038.358));
equation
  apollo.thrust = if time < thrustDecreaseTime then force1 else if time < thrustEndTime then force2 else 0;
    apollo.gravity = (moon.g * moon.mass) / (apollo.altitude + moon.radius) ^ 2;
  end MoonLanding;
    
