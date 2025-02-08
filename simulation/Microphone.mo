model Microphone
  Modelica.Blocks.Interfaces.BooleanInput u annotation(
    Placement(transformation(origin = {-86, 10}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-80, -34}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-114, 76}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-90, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {70, 72}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {-20, 76}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch annotation(
    Placement(transformation(origin = {4, 18}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 700)  annotation(
    Placement(transformation(origin = {44, 18}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(u, switch.control) annotation(
    Line(points = {{-86, 10}, {-48, 10}, {-48, 30}, {4, 30}}, color = {255, 0, 255}));
  connect(pin_p, currentSensor.p) annotation(
    Line(points = {{-114, 76}, {-30, 76}}, color = {0, 0, 255}));
  connect(currentSensor.n, switch.p) annotation(
    Line(points = {{-10, 76}, {-6, 76}, {-6, 18}}, color = {0, 0, 255}));
  connect(switch.n, resistor.p) annotation(
    Line(points = {{14, 18}, {34, 18}}, color = {0, 0, 255}));
  connect(resistor.n, pin_n) annotation(
    Line(points = {{54, 18}, {70, 18}, {70, 72}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Diagram(coordinateSystem(extent = {{-120, 100}, {100, 0}})),
  version = "");
end Microphone;