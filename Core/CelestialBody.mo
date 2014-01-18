within Core;

  model CelestialBody "Celestial body"
    extends Body;
    constant Real g = 6.672e-11;
    parameter Real radius;
  end CelestialBody;