model MCU_ACC_MIC
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 175)  annotation(
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {-42, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(resistor.n, pin_n) annotation(
    Line(points = {{10, 0}, {80, 0}}, color = {0, 0, 255}));
  connect(pin_p, currentSensor.p) annotation(
    Line(points = {{-80, 0}, {-52, 0}}, color = {0, 0, 255}));
  connect(currentSensor.n, resistor.p) annotation(
    Line(points = {{-32, 0}, {-10, 0}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end MCU_ACC_MIC;