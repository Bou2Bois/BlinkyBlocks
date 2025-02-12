model One_To_Ten_Bb_Red
  BlinkyRed blinky1 annotation(
    Placement(transformation(origin = {-150, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky2 annotation(
    Placement(transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky3 annotation(
    Placement(transformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyAlim blinkyAlim annotation(
    Placement(transformation(origin = {-188, 28}, extent = {{-12, -12}, {12, 12}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch1 annotation(
    Placement(transformation(origin = {-170, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch2 annotation(
    Placement(transformation(origin = {-130, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch3 annotation(
    Placement(transformation(origin = {-90, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable1(table = {1})  annotation(
    Placement(transformation(origin = {-170, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable2(table = {2})  annotation(
    Placement(transformation(origin = {-130, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable3(table = {3})  annotation(
    Placement(transformation(origin = {-90, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable4(table = {4})  annotation(
    Placement(transformation(origin = {-50, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable5(table = {5})  annotation(
    Placement(transformation(origin = {-10, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable6(table = {6})  annotation(
    Placement(transformation(origin = {30, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable7(table = {7})  annotation(
    Placement(transformation(origin = {70, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch4 annotation(
    Placement(transformation(origin = {-50, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch5 annotation(
    Placement(transformation(origin = {-10, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch6 annotation(
    Placement(transformation(origin = {30, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch7 annotation(
    Placement(transformation(origin = {70, 64}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky4 annotation(
    Placement(transformation(origin = {-30, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky5 annotation(
    Placement(transformation(origin = {10, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky6 annotation(
    Placement(transformation(origin = {50, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky7 annotation(
    Placement(transformation(origin = {90, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky8 annotation(
    Placement(transformation(origin = {130, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky9 annotation(
    Placement(transformation(origin = {170, 30}, extent = {{-10, -10}, {10, 10}})));
  BlinkyRed blinky10 annotation(
    Placement(transformation(origin = {210, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch8 annotation(
    Placement(transformation(origin = {110, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch9 annotation(
    Placement(transformation(origin = {150, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch10 annotation(
    Placement(transformation(origin = {190, 64}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable8(table = {8})  annotation(
    Placement(transformation(origin = {110, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable9(table = {9})  annotation(
    Placement(transformation(origin = {150, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanTable booleanTable10(table = {10})  annotation(
    Placement(transformation(origin = {190, 92}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(blinkyAlim.pin_p, switch1.p) annotation(
    Line(points = {{-178, 36}, {-178, 37.5}, {-180, 37.5}, {-180, 64}}, color = {0, 0, 255}));
  connect(blinky1.pin_p, switch1.n) annotation(
    Line(points = {{-158, 36}, {-158, 64}, {-160, 64}}, color = {0, 0, 255}));
  connect(blinky1.pin_p, switch2.p) annotation(
    Line(points = {{-158, 36}, {-158, 64}, {-140, 64}}, color = {0, 0, 255}));
  connect(blinky2.pin_p, switch2.n) annotation(
    Line(points = {{-118, 36}, {-118, 64}, {-120, 64}}, color = {0, 0, 255}));
  connect(blinky2.pin_p, switch3.p) annotation(
    Line(points = {{-118, 36}, {-118, 64}, {-100, 64}}, color = {0, 0, 255}));
  connect(blinky3.pin_p, switch3.n) annotation(
    Line(points = {{-78, 36}, {-78, 64}, {-80, 64}}, color = {0, 0, 255}));
  connect(blinky1.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-142, 36}, {-134, 36}, {-134, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(blinky2.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-102, 36}, {-94, 36}, {-94, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(blinky3.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-62, 36}, {-52, 36}, {-52, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(booleanTable1.y, switch1.control) annotation(
    Line(points = {{-159, 92}, {-156, 92}, {-156, 80}, {-170, 80}, {-170, 76}}, color = {255, 0, 255}));
  connect(booleanTable2.y, switch2.control) annotation(
    Line(points = {{-118, 92}, {-116, 92}, {-116, 80}, {-130, 80}, {-130, 76}}, color = {255, 0, 255}));
  connect(booleanTable3.y, switch3.control) annotation(
    Line(points = {{-78, 92}, {-76, 92}, {-76, 80}, {-90, 80}, {-90, 76}}, color = {255, 0, 255}));
  connect(blinky3.pin_p, switch4.p) annotation(
    Line(points = {{-78, 36}, {-78, 64}, {-60, 64}}, color = {0, 0, 255}));
  connect(switch4.n, blinky4.pin_p) annotation(
    Line(points = {{-40, 64}, {-38, 64}, {-38, 36}}, color = {0, 0, 255}));
  connect(blinky4.pin_p, switch5.p) annotation(
    Line(points = {{-38, 36}, {-38, 64}, {-20, 64}}, color = {0, 0, 255}));
  connect(switch5.n, blinky5.pin_p) annotation(
    Line(points = {{0, 64}, {2, 64}, {2, 36}}, color = {0, 0, 255}));
  connect(blinky5.pin_p, switch6.p) annotation(
    Line(points = {{2, 36}, {2, 64}, {20, 64}}, color = {0, 0, 255}));
  connect(switch6.n, blinky6.pin_p) annotation(
    Line(points = {{40, 64}, {42, 64}, {42, 36}}, color = {0, 0, 255}));
  connect(blinky6.pin_p, switch7.p) annotation(
    Line(points = {{42, 36}, {42, 64}, {60, 64}}, color = {0, 0, 255}));
  connect(switch7.n, blinky7.pin_p) annotation(
    Line(points = {{80, 64}, {82, 64}, {82, 36}}, color = {0, 0, 255}));
  connect(blinky4.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{-22, 36}, {-16, 36}, {-16, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(blinky5.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{18, 36}, {24, 36}, {24, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(blinky6.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{58, 36}, {64, 36}, {64, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(blinky7.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{98, 36}, {104, 36}, {104, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(booleanTable4.y, switch4.control) annotation(
    Line(points = {{-38, 92}, {-36, 92}, {-36, 80}, {-50, 80}, {-50, 76}}, color = {255, 0, 255}));
  connect(booleanTable5.y, switch5.control) annotation(
    Line(points = {{2, 92}, {4, 92}, {4, 80}, {-10, 80}, {-10, 76}}, color = {255, 0, 255}));
  connect(booleanTable6.y, switch6.control) annotation(
    Line(points = {{42, 92}, {44, 92}, {44, 80}, {30, 80}, {30, 76}}, color = {255, 0, 255}));
  connect(booleanTable7.y, switch7.control) annotation(
    Line(points = {{82, 92}, {84, 92}, {84, 80}, {70, 80}, {70, 76}}, color = {255, 0, 255}));
  connect(blinky8.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{138, 36}, {144, 36}, {144, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(blinky9.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{178, 36}, {184, 36}, {184, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(blinky10.pin_n, blinkyAlim.pin_n) annotation(
    Line(points = {{218, 36}, {224, 36}, {224, 10}, {-178, 10}, {-178, 20}}, color = {0, 0, 255}));
  connect(booleanTable8.y, switch8.control) annotation(
    Line(points = {{122, 92}, {124, 92}, {124, 80}, {110, 80}, {110, 76}}, color = {255, 0, 255}));
  connect(booleanTable9.y, switch9.control) annotation(
    Line(points = {{162, 92}, {164, 92}, {164, 80}, {150, 80}, {150, 76}}, color = {255, 0, 255}));
  connect(booleanTable10.y, switch10.control) annotation(
    Line(points = {{202, 92}, {204, 92}, {204, 80}, {190, 80}, {190, 76}}, color = {255, 0, 255}));
  connect(blinky7.pin_p, switch8.p) annotation(
    Line(points = {{82, 36}, {82, 64}, {100, 64}}, color = {0, 0, 255}));
  connect(blinky8.pin_p, switch8.n) annotation(
    Line(points = {{122, 36}, {122, 64}, {120, 64}}, color = {0, 0, 255}));
  connect(blinky8.pin_p, switch9.p) annotation(
    Line(points = {{122, 36}, {122, 64}, {140, 64}}, color = {0, 0, 255}));
  connect(switch9.n, blinky9.pin_p) annotation(
    Line(points = {{160, 64}, {162, 64}, {162, 36}}, color = {0, 0, 255}));
  connect(blinky9.pin_p, switch10.p) annotation(
    Line(points = {{162, 36}, {162, 64}, {180, 64}}, color = {0, 0, 255}));
  connect(switch10.n, blinky10.pin_p) annotation(
    Line(points = {{200, 64}, {202, 64}, {202, 36}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end One_To_Ten_Bb_Red;