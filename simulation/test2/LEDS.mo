model LEDS
  Modelica.Blocks.Interfaces.BooleanInput r annotation(
    Placement(transformation(origin = {-99, 57}, extent = {{-13, -13}, {13, 13}}), iconTransformation(origin = {-80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput g annotation(
    Placement(transformation(origin = {-99, 23}, extent = {{-13, -13}, {13, 13}}), iconTransformation(origin = {0, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput b annotation(
    Placement(transformation(origin = {-99, -19}, extent = {{-13, -13}, {13, 13}}), iconTransformation(origin = {80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor_r(R = 115) annotation(
    Placement(transformation(origin = {0, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor_g(R = 77) annotation(
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor_b(R = 75) annotation(
    Placement(transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-80, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {80, 80}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch_r annotation(
    Placement(transformation(origin = {-30, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch_g annotation(
    Placement(transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch_b annotation(
    Placement(transformation(origin = {-30, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {-60, 80}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(switch_r.n, resistor_r.p) annotation(
    Line(points = {{-20, 40}, {-10, 40}}, color = {0, 0, 255}));
  connect(switch_g.n, resistor_g.p) annotation(
    Line(points = {{-20, 0}, {-10, 0}}, color = {0, 0, 255}));
  connect(switch_b.n, resistor_b.p) annotation(
    Line(points = {{-20, -40}, {-10, -40}}, color = {0, 0, 255}));
  connect(resistor_r.n, pin_n) annotation(
    Line(points = {{10, 40}, {40, 40}, {40, 80}, {80, 80}}, color = {0, 0, 255}));
  connect(resistor_g.n, pin_n) annotation(
    Line(points = {{10, 0}, {40, 0}, {40, 80}, {80, 80}}, color = {0, 0, 255}));
  connect(resistor_b.n, pin_n) annotation(
    Line(points = {{10, -40}, {40, -40}, {40, 80}, {80, 80}}, color = {0, 0, 255}));
  connect(pin_p, currentSensor.p) annotation(
    Line(points = {{-80, 80}, {-70, 80}}, color = {0, 0, 255}));
  connect(currentSensor.n, switch_r.p) annotation(
    Line(points = {{-50, 80}, {-50, 40}, {-40, 40}}, color = {0, 0, 255}));
  connect(currentSensor.n, switch_g.p) annotation(
    Line(points = {{-50, 80}, {-50, 0}, {-40, 0}}, color = {0, 0, 255}));
  connect(currentSensor.n, switch_b.p) annotation(
    Line(points = {{-50, 80}, {-50, -40}, {-40, -40}}, color = {0, 0, 255}));
  connect(r, switch_r.control) annotation(
    Line(points = {{-98, 58}, {-30, 58}, {-30, 52}}, color = {255, 0, 255}));
  connect(b, switch_b.control) annotation(
    Line(points = {{-99, -19}, {-30, -19}, {-30, -28}}, color = {255, 0, 255}));
  connect(g, switch_g.control) annotation(
    Line(points = {{-99, 23}, {-30, 23}, {-30, 12}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram);
end LEDS;