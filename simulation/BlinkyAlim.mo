model BlinkyAlim
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V = 3.3)  annotation(
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1.65)  annotation(
    Placement(transformation(origin = {0, 48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {10, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {80, 48}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {40, 48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(transformation(origin = {0, 80}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(constantVoltage.n, ground.p) annotation(
    Line(points = {{10, 0}, {10, -40}}, color = {0, 0, 255}));
  connect(constantVoltage.p, resistor.p) annotation(
    Line(points = {{-10, 0}, {-10, 48}}, color = {0, 0, 255}));
  connect(constantVoltage.n, pin_n) annotation(
    Line(points = {{10, 0}, {80, 0}}, color = {0, 0, 255}));
  connect(resistor.n, currentSensor.p) annotation(
    Line(points = {{10, 48}, {30, 48}}, color = {0, 0, 255}));
  connect(currentSensor.n, pin_p) annotation(
    Line(points = {{50, 48}, {80, 48}}, color = {0, 0, 255}));
  connect(voltageSensor.p, resistor.p) annotation(
    Line(points = {{-10, 80}, {-10, 48}}, color = {0, 0, 255}));
  connect(voltageSensor.n, resistor.n) annotation(
    Line(points = {{10, 80}, {10, 48}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end BlinkyAlim;