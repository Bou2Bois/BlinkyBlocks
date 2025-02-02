model BlinkyAlim
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V = 3.3)  annotation(
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {40, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {92, 48}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {82, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {34, 48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanStep booleanStep(startTime = 0, startValue = false)  annotation(
    Placement(transformation(origin = {42, 82}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch annotation(
    Placement(transformation(origin = {70, 48}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(constantVoltage.n, pin_n) annotation(
    Line(points = {{10, 0}, {82, 0}}, color = {0, 0, 255}));
  connect(currentSensor.n, switch.p) annotation(
    Line(points = {{44, 48}, {60, 48}}, color = {0, 0, 255}));
  connect(switch.n, pin_p) annotation(
    Line(points = {{80, 48}, {92, 48}}, color = {0, 0, 255}));
  connect(booleanStep.y, switch.control) annotation(
    Line(points = {{54, 82}, {70, 82}, {70, 60}}, color = {255, 0, 255}));
  connect(constantVoltage.n, ground.p) annotation(
    Line(points = {{10, 0}, {40, 0}, {40, -40}}, color = {0, 0, 255}));
  connect(constantVoltage.p, currentSensor.p) annotation(
    Line(points = {{-10, 0}, {-10, 48}, {24, 48}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end BlinkyAlim;