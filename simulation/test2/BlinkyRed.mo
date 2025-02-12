model BlinkyRed
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-44, 52}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-80, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {44, 52}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 60}, extent = {{-20, -20}, {20, 20}})));
  Blinky blinky annotation(
    Placement(transformation(origin = {0, 40}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Sources.BooleanExpression True(y = true)  annotation(
    Placement(transformation(origin = {-50, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanExpression False annotation(
    Placement(transformation(origin = {-50, 28}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(pin_p, blinky.pin_p) annotation(
    Line(points = {{-44, 52}, {-16, 52}}, color = {0, 0, 255}));
  connect(blinky.pin_n, pin_n) annotation(
    Line(points = {{16, 52}, {44, 52}}, color = {0, 0, 255}));
  connect(False.y, blinky.spk) annotation(
    Line(points = {{-38, 28}, {-30, 28}, {-30, 40}, {-16, 40}}, color = {255, 0, 255}));
  connect(False.y, blinky.g) annotation(
    Line(points = {{-38, 28}, {-30, 28}, {-30, 16}, {-8, 16}, {-8, 28}, {0, 28}}, color = {255, 0, 255}));
  connect(False.y, blinky.b) annotation(
    Line(points = {{-38, 28}, {-30, 28}, {-30, 16}, {8, 16}, {8, 28}, {16, 28}}, color = {255, 0, 255}));
  connect(True.y, blinky.r) annotation(
    Line(points = {{-38, 12}, {-24, 12}, {-24, 28}, {-16, 28}}, color = {255, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end BlinkyRed;