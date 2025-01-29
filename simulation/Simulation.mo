model Simulation
  BlinkyAlim blinkyAlim annotation(
    Placement(transformation(origin = {-80, -60}, extent = {{-20, -20}, {20, 20}})));
  Blinky blinky1 annotation(
    Placement(transformation(origin = {-20, -60}, extent = {{-20, -20}, {20, 20}})));
  Blinky blinky2 annotation(
    Placement(transformation(origin = {-20, 0}, extent = {{-20, -20}, {20, 20}})));
  Blinky blinky3 annotation(
    Placement(transformation(origin = {-20, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Sources.Constant const1(k = 175) annotation(
    Placement(transformation(origin = {-82, -10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const2(k = 26.4) annotation(
    Placement(transformation(origin = {-82, 28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const3(k = 29.3) annotation(
    Placement(transformation(origin = {-82, 66}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(blinkyAlim.pin_p, blinky1.pin_p) annotation(
    Line(points = {{-64, -48}, {-36, -48}}, color = {0, 0, 255}));
  connect(blinky1.pin_p, blinky2.pin_p) annotation(
    Line(points = {{-36, -48}, {-36, 12}}, color = {0, 0, 255}));
  connect(blinky2.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-4, 12}, {40, 12}, {40, -94}, {-64, -94}, {-64, -72}}, color = {0, 0, 255}));
  connect(blinky1.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-4, -48}, {40, -48}, {40, -94}, {-64, -94}, {-64, -72}}, color = {0, 0, 255}));
  connect(blinky3.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-4, 72}, {40, 72}, {40, -94}, {-64, -94}, {-64, -72}}, color = {0, 0, 255}));
  connect(blinky2.pin_p, blinky3.pin_p) annotation(
    Line(points = {{-36, 12}, {-36, 72}}, color = {0, 0, 255}));
  connect(const1.y, blinky1.resistance) annotation(
    Line(points = {{-70, -10}, {-50, -10}, {-50, -68}, {-36, -68}}, color = {0, 0, 127}));
  connect(const2.y, blinky2.resistance) annotation(
    Line(points = {{-70, 28}, {-54, 28}, {-54, -8}, {-36, -8}}, color = {0, 0, 127}));
  connect(const3.y, blinky3.resistance) annotation(
    Line(points = {{-70, 66}, {-56, 66}, {-56, 52}, {-36, 52}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Simulation;