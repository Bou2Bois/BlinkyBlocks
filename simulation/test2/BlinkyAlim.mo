model BlinkyAlim
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V = 5)  annotation(
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {40, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {70, 26}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {0, 26}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(constantVoltage.n, pin_n) annotation(
    Line(points = {{10, 0}, {70, 0}}, color = {0, 0, 255}));
  connect(constantVoltage.n, ground.p) annotation(
    Line(points = {{10, 0}, {40, 0}, {40, -20}}, color = {0, 0, 255}));
  connect(constantVoltage.p, currentSensor.p) annotation(
    Line(points = {{-10, 0}, {-20, 0}, {-20, 26}, {-10, 26}}, color = {0, 0, 255}));
  connect(currentSensor.n, pin_p) annotation(
    Line(points = {{10, 26}, {70, 26}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end BlinkyAlim;