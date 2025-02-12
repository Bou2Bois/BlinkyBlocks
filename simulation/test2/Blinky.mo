model Blinky
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-94, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  MCU_ACC_MIC mcu_acc_mic annotation(
    Placement(transformation(origin = {1, -9}, extent = {{-15, -15}, {15, 15}})));
  LEDS leds annotation(
    Placement(transformation(origin = {0, -62}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Blocks.Interfaces.BooleanInput r annotation(
    Placement(transformation(origin = {-100, -46}, extent = {{-14, -14}, {14, 14}}), iconTransformation(origin = {-80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput g annotation(
    Placement(transformation(origin = {-100, -66}, extent = {{-14, -14}, {14, 14}}), iconTransformation(origin = {0, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput b annotation(
    Placement(transformation(origin = {-100, -86}, extent = {{-14, -14}, {14, 14}}), iconTransformation(origin = {80, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {-74, 0}, extent = {{-10, -10}, {10, 10}})));
  Speaker speaker annotation(
    Placement(transformation(origin = {1, 37}, extent = {{-15, -15}, {15, 15}})));
  Modelica.Blocks.Interfaces.BooleanInput spk annotation(
    Placement(transformation(origin = {-100, 42}, extent = {{-14, -14}, {14, 14}}), iconTransformation(origin = {-80, 4}, extent = {{-20, -20}, {20, 20}})));
equation
  connect(mcu_acc_mic.pin_n, pin_n) annotation(
    Line(points = {{13, 0}, {80, 0}}, color = {0, 0, 255}));
  connect(leds.pin_n, pin_n) annotation(
    Line(points = {{11, -54}, {60, -54}, {60, 0}, {80, 0}}, color = {0, 0, 255}));
  connect(r, leds.r) annotation(
    Line(points = {{-100, -46}, {-70, -46}, {-70, -70}, {-11, -70}}, color = {255, 0, 255}));
  connect(g, leds.g) annotation(
    Line(points = {{-100, -66}, {-76, -66}, {-76, -90}, {-8, -90}, {-8, -70}, {0, -70}}, color = {255, 0, 255}));
  connect(b, leds.b) annotation(
    Line(points = {{-100, -86}, {-80, -86}, {-80, -98}, {8, -98}, {8, -70}, {11, -70}}, color = {255, 0, 255}));
  connect(pin_p, currentSensor.p) annotation(
    Line(points = {{-94, 0}, {-84, 0}}, color = {0, 0, 255}));
  connect(currentSensor.n, mcu_acc_mic.pin_p) annotation(
    Line(points = {{-64, 0}, {-11, 0}}, color = {0, 0, 255}));
  connect(currentSensor.n, leds.pin_p) annotation(
    Line(points = {{-64, 0}, {-40, 0}, {-40, -54}, {-11, -54}}, color = {0, 0, 255}));
  connect(speaker.pin_p, currentSensor.n) annotation(
    Line(points = {{-12.5, 41.5}, {-34, 41.5}, {-34, 0}, {-64, 0}}, color = {0, 0, 255}));
  connect(speaker.pin_n, pin_n) annotation(
    Line(points = {{11.5, 41.5}, {38, 41.5}, {38, 0}, {80, 0}}, color = {0, 0, 255}));
  connect(spk, speaker.u) annotation(
    Line(points = {{-100, 42}, {-58.5, 42}, {-58.5, 32}, {-11, 32}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Blinky;