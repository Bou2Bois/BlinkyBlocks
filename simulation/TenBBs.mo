model TenBBs
  BlinkyAlim blinkyAlim annotation(
    Placement(transformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky1 annotation(
    Placement(transformation(origin = {-50, -70}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky2 annotation(
    Placement(transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky3 annotation(
    Placement(transformation(origin = {-50, 10}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky4 annotation(
    Placement(transformation(origin = {-50, 50}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky5 annotation(
    Placement(transformation(origin = {-50, 90}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky6 annotation(
    Placement(transformation(origin = {-10, 90}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky7 annotation(
    Placement(transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky8 annotation(
    Placement(transformation(origin = {-10, 10}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky9 annotation(
    Placement(transformation(origin = {-10, -30}, extent = {{-10, -10}, {10, 10}})));
  Blinky blinky10 annotation(
    Placement(transformation(origin = {-10, -70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable(table = {2, 4}) annotation(
    Placement(transformation(origin = {-94, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanExpression booleanExpression annotation(
    Placement(transformation(origin = {-92, 42}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(blinkyAlim.pin_p, blinky1.pin_p) annotation(
    Line(points = {{-82, -64}, {-58, -64}}, color = {0, 0, 255}));
  connect(blinky1.pin_p, blinky2.pin_p) annotation(
    Line(points = {{-58, -64}, {-58, -24}}, color = {0, 0, 255}));
  connect(blinky2.pin_p, blinky3.pin_p) annotation(
    Line(points = {{-58, -24}, {-58, 16}}, color = {0, 0, 255}));
  connect(blinky3.pin_p, blinky4.pin_p) annotation(
    Line(points = {{-58, 16}, {-58, 56}}, color = {0, 0, 255}));
  connect(blinky4.pin_p, blinky5.pin_p) annotation(
    Line(points = {{-58, 56}, {-58, 96}}, color = {0, 0, 255}));
  connect(blinky5.pin_p, blinky6.pin_p) annotation(
    Line(points = {{-58, 96}, {-58, 108}, {-18, 108}, {-18, 96}}, color = {0, 0, 255}));
  connect(blinky6.pin_p, blinky7.pin_p) annotation(
    Line(points = {{-18, 96}, {-18, 76}, {-22, 76}, {-22, 56}}, color = {0, 0, 255}));
  connect(blinky7.pin_p, blinky8.pin_p) annotation(
    Line(points = {{-22, 56}, {-22, 36}, {-18, 36}, {-18, 16}}, color = {0, 0, 255}));
  connect(blinky8.pin_p, blinky9.pin_p) annotation(
    Line(points = {{-18, 16}, {-18, -24}}, color = {0, 0, 255}));
  connect(blinky9.pin_p, blinky10.pin_p) annotation(
    Line(points = {{-18, -24}, {-18, -64}}, color = {0, 0, 255}));
  connect(blinky1.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-42, -64}, {-32, -64}, {-32, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky2.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-42, -24}, {-32, -24}, {-32, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky3.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-42, 16}, {-32, 16}, {-32, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky4.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-42, 56}, {-32, 56}, {-32, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky5.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-42, 96}, {-32, 96}, {-32, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky6.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-2, 96}, {8, 96}, {8, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky7.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-6, 56}, {6, 56}, {6, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky8.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-2, 16}, {8, 16}, {8, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky9.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-2, -24}, {8, -24}, {8, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(blinky10.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-2, -64}, {8, -64}, {8, -90}, {-82, -90}, {-82, -76}}, color = {0, 0, 255}));
  connect(booleanTable.y, blinky1.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -76}, {-58, -76}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky1.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -84}, {-54, -84}, {-54, -76}, {-50, -76}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky1.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -84}, {-46, -84}, {-46, -76}, {-42, -76}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky2.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -36}, {-58, -36}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky2.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -44}, {-54, -44}, {-54, -36}, {-50, -36}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky2.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -44}, {-46, -44}, {-46, -36}, {-42, -36}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky3.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 4}, {-58, 4}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky3.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -4}, {-54, -4}, {-54, 4}, {-50, 4}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky3.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -4}, {-46, -4}, {-46, 4}, {-42, 4}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky4.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 44}, {-58, 44}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky4.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 36}, {-54, 36}, {-54, 44}, {-50, 44}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky4.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 36}, {-46, 36}, {-46, 44}, {-42, 44}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky5.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 84}, {-58, 84}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky5.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 76}, {-54, 76}, {-54, 84}, {-50, 84}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky5.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 76}, {-46, 76}, {-46, 84}, {-42, 84}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky6.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 76}, {-24, 76}, {-24, 84}, {-18, 84}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky6.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 76}, {-14, 76}, {-14, 84}, {-10, 84}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky6.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 76}, {-6, 76}, {-6, 84}, {-2, 84}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky7.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 36}, {-18, 36}, {-18, 44}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky7.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 36}, {-10, 36}, {-10, 44}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky7.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, 36}, {-2, 36}, {-2, 44}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky8.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -4}, {-24, -4}, {-24, 4}, {-18, 4}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky8.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -4}, {-14, -4}, {-14, 4}, {-10, 4}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky8.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -4}, {-6, -4}, {-6, 4}, {-2, 4}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky9.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -44}, {-24, -44}, {-24, -36}, {-18, -36}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky9.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -44}, {-14, -44}, {-14, -36}, {-10, -36}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky9.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -44}, {-6, -44}, {-6, -36}, {-2, -36}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky10.r) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -84}, {-24, -84}, {-24, -76}, {-18, -76}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky10.g) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -84}, {-14, -84}, {-14, -76}, {-10, -76}}, color = {255, 0, 255}));
  connect(booleanTable.y, blinky10.b) annotation(
    Line(points = {{-83, 10}, {-74, 10}, {-74, -84}, {-6, -84}, {-6, -76}, {-2, -76}}, color = {255, 0, 255}));
  connect(booleanExpression.y, blinky5.spk) annotation(
    Line(points = {{-80, 42}, {-80, 90}, {-58, 90}}, color = {255, 0, 255}));
  connect(booleanExpression.y, blinky4.spk) annotation(
    Line(points = {{-80, 42}, {-80, 50}, {-58, 50}}, color = {255, 0, 255}));
  connect(booleanExpression.y, blinky6.spk) annotation(
    Line(points = {{-80, 42}, {-80, 68}, {-30, 68}, {-30, 90}, {-18, 90}}, color = {255, 0, 255}));
  connect(blinky7.spk, booleanExpression.y) annotation(
    Line(points = {{-18, 50}, {-30, 50}, {-30, 68}, {-80, 68}, {-80, 42}}, color = {255, 0, 255}));
  connect(blinky8.spk, booleanExpression.y) annotation(
    Line(points = {{-18, 10}, {-26, 10}, {-26, 28}, {-80, 28}, {-80, 42}}, color = {255, 0, 255}));
  connect(blinky3.spk, booleanExpression.y) annotation(
    Line(points = {{-58, 10}, {-68, 10}, {-68, 28}, {-80, 28}, {-80, 42}}, color = {255, 0, 255}));
  connect(blinky9.spk, booleanExpression.y) annotation(
    Line(points = {{-18, -30}, {-28, -30}, {-28, -14}, {-80, -14}, {-80, 42}}, color = {255, 0, 255}));
  connect(blinky2.spk, booleanExpression.y) annotation(
    Line(points = {{-58, -30}, {-68, -30}, {-68, -14}, {-80, -14}, {-80, 42}}, color = {255, 0, 255}));
  connect(blinky10.spk, booleanExpression.y) annotation(
    Line(points = {{-18, -70}, {-24, -70}, {-24, -52}, {-80, -52}, {-80, 42}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram);
end TenBBs;