model Fr_Flag
  Modelica.Blocks.Sources.BooleanExpression booleanExpression(y = false)  annotation(
    Placement(transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable(table = {2, 4})  annotation(
    Placement(transformation(origin = {-90, 48}, extent = {{-10, -10}, {10, 10}})));
  BlinkyAlim blinkyAlim annotation(
    Placement(transformation(origin = {-80, -60}, extent = {{-20, -20}, {20, 20}})));
  Blinky blinky1 annotation(
    Placement(transformation(origin = {0, -60}, extent = {{-20, -20}, {20, 20}})));
  Blinky blinky2 annotation(
    Placement(transformation(extent = {{-20, -20}, {20, 20}})));
  Blinky blinky3 annotation(
    Placement(transformation(origin = {0, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable2(table = {3, 5})  annotation(
    Placement(transformation(origin = {-90, 22}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(blinkyAlim.pin_p, blinky1.pin_p) annotation(
    Line(points = {{-64, -48}, {-16, -48}}, color = {0, 0, 255}));
  connect(blinky1.pin_p, blinky2.pin_p) annotation(
    Line(points = {{-16, -48}, {-16, 12}}, color = {0, 0, 255}));
  connect(blinky2.pin_p, blinky3.pin_p) annotation(
    Line(points = {{-16, 12}, {-16, 72}}, color = {0, 0, 255}));
  connect(blinky1.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{16, -48}, {40, -48}, {40, -92}, {-64, -92}, {-64, -72}}, color = {0, 0, 255}));
  connect(blinky2.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{16, 12}, {40, 12}, {40, -92}, {-64, -92}, {-64, -72}}, color = {0, 0, 255}));
  connect(blinky3.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{16, 72}, {40, 72}, {40, -92}, {-64, -92}, {-64, -72}}, color = {0, 0, 255}));
  connect(booleanExpression.y, blinky1.r) annotation(
    Line(points = {{-78, 0}, {-50, 0}, {-50, -72}, {-16, -72}}, color = {255, 0, 255}));
  connect(booleanExpression.y, blinky1.g) annotation(
    Line(points = {{-78, 0}, {-50, 0}, {-50, -82}, {-8, -82}, {-8, -72}, {0, -72}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky1.b) annotation(
    Line(points = {{-78, 48}, {-40, 48}, {-40, -86}, {8, -86}, {8, -72}, {16, -72}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky2.r) annotation(
    Line(points = {{-78, 48}, {-40, 48}, {-40, -12}, {-16, -12}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky2.g) annotation(
    Line(points = {{-78, 48}, {-40, 48}, {-40, -30}, {-8, -30}, {-8, -12}, {0, -12}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky2.b) annotation(
    Line(points = {{-78, 48}, {-40, 48}, {-40, -30}, {8, -30}, {8, -12}, {16, -12}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky3.r) annotation(
    Line(points = {{-78, 48}, {-16, 48}}, color = {255, 0, 255}));
  connect(booleanExpression.y, blinky3.g) annotation(
    Line(points = {{-78, 0}, {-50, 0}, {-50, 32}, {-8, 32}, {-8, 48}, {0, 48}}, color = {255, 0, 255}));
  connect(booleanExpression.y, blinky3.b) annotation(
    Line(points = {{-78, 0}, {-50, 0}, {-50, 32}, {8, 32}, {8, 48}, {16, 48}}, color = {255, 0, 255}));
  connect(booleanTable2.y, blinky3.spk) annotation(
    Line(points = {{-78, 22}, {-66, 22}, {-66, 60}, {-16, 60}}, color = {255, 0, 255}));
  connect(booleanTable2.y, blinky2.spk) annotation(
    Line(points = {{-78, 22}, {-66, 22}, {-66, 14}, {-32, 14}, {-32, 0}, {-16, 0}}, color = {255, 0, 255}));
  connect(booleanTable2.y, blinky1.spk) annotation(
    Line(points = {{-78, 22}, {-66, 22}, {-66, 14}, {-32, 14}, {-32, -60}, {-16, -60}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Fr_Flag;