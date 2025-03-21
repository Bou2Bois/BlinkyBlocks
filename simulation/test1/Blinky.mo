model Blinky
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-94, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {82, 40}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  MCU_ACC_MIC mcu_acc_mic annotation(
    Placement(transformation(origin = {0, 28}, extent = {{-20, -20}, {20, 20}})));
  LEDS leds annotation(
    Placement(transformation(origin = {0, -68}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput r annotation(
    Placement(transformation(origin = {-100, -46}, extent = {{-14, -14}, {14, 14}}), iconTransformation(origin = {-80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput g annotation(
    Placement(transformation(origin = {-100, -66}, extent = {{-14, -14}, {14, 14}}), iconTransformation(origin = {0, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput b annotation(
    Placement(transformation(origin = {-100, -86}, extent = {{-14, -14}, {14, 14}}), iconTransformation(origin = {80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(transformation(origin = {0, 78}, extent = {{-16, -16}, {16, 16}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {-70, 40}, extent = {{-10, -10}, {10, 10}})));
  Speaker speaker annotation(
    Placement(transformation(origin = {-1, 125}, extent = {{-15, -15}, {15, 15}})));
  Modelica.Blocks.Interfaces.BooleanInput spk annotation(
    Placement(transformation(origin = {-100, 88}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-80, 4}, extent = {{-20, -20}, {20, 20}})));
equation
  connect(mcu_acc_mic.pin_n, pin_n) annotation(
    Line(points = {{16, 40}, {82, 40}}, color = {0, 0, 255}));
  connect(leds.pin_n, pin_n) annotation(
    Line(points = {{16, -56}, {60, -56}, {60, 40}, {82, 40}}, color = {0, 0, 255}));
  connect(r, leds.r) annotation(
    Line(points = {{-100, -46}, {-70, -46}, {-70, -80}, {-16, -80}}, color = {255, 0, 255}));
  connect(g, leds.g) annotation(
    Line(points = {{-100, -66}, {-76, -66}, {-76, -90}, {-8, -90}, {-8, -80}, {0, -80}}, color = {255, 0, 255}));
  connect(b, leds.b) annotation(
    Line(points = {{-100, -86}, {-80, -86}, {-80, -98}, {8, -98}, {8, -80}, {16, -80}}, color = {255, 0, 255}));
  connect(voltageSensor.p, mcu_acc_mic.pin_p) annotation(
    Line(points = {{-16, 78}, {-16, 40}}, color = {0, 0, 255}));
  connect(voltageSensor.n, mcu_acc_mic.pin_n) annotation(
    Line(points = {{16, 78}, {16, 40}}, color = {0, 0, 255}));
  connect(pin_p, currentSensor.p) annotation(
    Line(points = {{-94, 40}, {-80, 40}}, color = {0, 0, 255}));
  connect(currentSensor.n, mcu_acc_mic.pin_p) annotation(
    Line(points = {{-60, 40}, {-16, 40}}, color = {0, 0, 255}));
  connect(currentSensor.n, leds.pin_p) annotation(
    Line(points = {{-60, 40}, {-40, 40}, {-40, -56}, {-16, -56}}, color = {0, 0, 255}));
  connect(speaker.pin_p, currentSensor.n) annotation(
    Line(points = {{-14, 130}, {-34, 130}, {-34, 40}, {-60, 40}}, color = {0, 0, 255}));
  connect(speaker.pin_n, pin_n) annotation(
    Line(points = {{10, 130}, {38, 130}, {38, 40}, {82, 40}}, color = {0, 0, 255}));
  connect(spk, speaker.u) annotation(
    Line(points = {{-100, 88}, {-62, 88}, {-62, 120}, {-12, 120}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Blinky;