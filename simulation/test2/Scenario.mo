model Scenario
  BlinkyAlim blinkyAlim annotation(
    Placement(transformation(origin = {-88, 28}, extent = {{-12, -12}, {12, 12}})));
  Blinky blinky1 annotation(
    Placement(transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable spk1(table = {8, 9})  annotation(
    Placement(transformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable red(table = {1, 2})  annotation(
    Placement(transformation(origin = {-90, -10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable green(table = {3, 4})  annotation(
    Placement(transformation(origin = {-50, -10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable blue(table = {5, 6})  annotation(
    Placement(transformation(origin = {-10, -10}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(blinkyAlim.pin_p, blinky1.pin_p) annotation(
    Line(points = {{-78, 36}, {-58, 36}}, color = {0, 0, 255}));
  connect(blinky1.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-42, 36}, {-34, 36}, {-34, 12}, {-78, 12}, {-78, 20}}, color = {0, 0, 255}));
  connect(spk1.y, blinky1.spk) annotation(
    Line(points = {{-78, 70}, {-66, 70}, {-66, 30}, {-58, 30}}, color = {255, 0, 255}));
  connect(red.y, blinky1.r) annotation(
    Line(points = {{-78, -10}, {-66, -10}, {-66, 24}, {-58, 24}}, color = {255, 0, 255}));
  connect(green.y, blinky1.g) annotation(
    Line(points = {{-38, -10}, {-32, -10}, {-32, 8}, {-54, 8}, {-54, 24}, {-50, 24}}, color = {255, 0, 255}));
  connect(blue.y, blinky1.b) annotation(
    Line(points = {{2, -10}, {6, -10}, {6, 16}, {-46, 16}, {-46, 24}, {-42, 24}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Scenario;