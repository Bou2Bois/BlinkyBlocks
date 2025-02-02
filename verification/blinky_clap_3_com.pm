
// the procotol is synchronous with no nondeterminism (a DTMC)
dtmc

module clapper
    state_clap : [0..1];
    sound : [0..1];
    [step] (state_clap=0) -> 0.1 : (sound'=1)&(state_clap'=1) + 0.9 : (sound'=0);
    [step] (state_clap=1) -> (sound'=0);
endmodule

module microphone
    detect : [0..1];
    [step] (true) -> (detect'=sound);
endmodule

module led
    light : [0..3];
    [step] (true) -> (light'=color);
endmodule

module controller
    state : [0..1];
    color : [0..3] init 0;
    [step] state=0 & detect=1 -> (state'=1) & (color'=1);
    [step] state=1 & color=color2 -> 1/3 : (color'=1 )+ 1/3 : (color'=2) + 1/3 : (color'=3);
    [step] state=1 & color!=color2 -> true;
    [step] state=0 & detect=0 -> true;
endmodule

module microphone2 = microphone[sound=sound, detect=detect2] endmodule
module led2 = led[light=light2, color=color2] endmodule
module controller2 = controller[state=state2, detect=detect2, color=color2, color2=color3] endmodule

module microphone3 = microphone[sound=sound, detect=detect3] endmodule
module led3 = led[light=light3, color=color3] endmodule
module controller3 = controller[state=state3, detect=detect3, color=color3, color2=color] endmodule
