model OneBlinky
  BlinkyAlim blinkyAlim annotation(
    Placement(transformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}})));
  Blinky blinky annotation(
    Placement(transformation(extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression annotation(
    Placement(transformation(origin = {-90, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable(table = {2, 4})  annotation(
    Placement(transformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression1 annotation(
    Placement(transformation(origin = {-50, 68}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(blinky.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{16, 12}, {40, 12}, {40, -40}, {-64, -40}, {-64, -12}}, color = {0, 0, 255}));
  connect(booleanExpression.y, blinky.r) annotation(
    Line(points = {{-79, 40}, {-40, 40}, {-40, -12}, {-16, -12}}, color = {255, 0, 255}));
  connect(booleanExpression.y, blinky.g) annotation(
    Line(points = {{-78, 40}, {-40, 40}, {-40, -28}, {-8, -28}, {-8, -12}, {0, -12}}, color = {255, 0, 255}));
  connect(booleanExpression.y, blinky.b) annotation(
    Line(points = {{-78, 40}, {-40, 40}, {-40, -28}, {8, -28}, {8, -12}, {16, -12}}, color = {255, 0, 255}));
  connect(blinkyAlim.pin_p, blinky.pin_p) annotation(
    Line(points = {{-64, 12}, {-16, 12}}, color = {0, 0, 255}));
  connect(booleanExpression1.y, blinky.spk) annotation(
    Line(points = {{-38, 68}, {-32, 68}, {-32, 0}, {-16, 0}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end OneBlinky;