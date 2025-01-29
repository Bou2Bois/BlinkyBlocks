model Blinky
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(transformation(origin = {44, 64}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {-6, 20}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-48, 20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {80, 20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Basic.VariableResistor resistor_var annotation(
    Placement(transformation(origin = {44, 20}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Blocks.Interfaces.RealInput resistance annotation(
    Placement(transformation(origin = {-50, 74}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-80, -40}, extent = {{-20, -20}, {20, 20}})));
equation
  connect(pin_p, currentSensor.p) annotation(
    Line(points = {{-48, 20}, {-20, 20}}, color = {0, 0, 255}));
  connect(currentSensor.n, resistor_var.p) annotation(
    Line(points = {{8, 20}, {30, 20}}, color = {0, 0, 255}));
  connect(voltageSensor.p, resistor_var.p) annotation(
    Line(points = {{30, 64}, {30, 20}}, color = {0, 0, 255}));
  connect(voltageSensor.n, resistor_var.n) annotation(
    Line(points = {{58, 64}, {58, 20}}, color = {0, 0, 255}));
  connect(resistor_var.n, pin_n) annotation(
    Line(points = {{58, 20}, {80, 20}}, color = {0, 0, 255}));
  connect(resistance, resistor_var.R) annotation(
    Line(points = {{-50, 74}, {-10, 74}, {-10, 42}, {44, 42}, {44, 36}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Blinky;