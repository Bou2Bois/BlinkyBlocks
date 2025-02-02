
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
    [step] (true) -> (light'=todo);
endmodule

module controller
    state : [0..1];
    todo : [0..3];
    color : [1..3] init 1;
    [step] state=0 & detect=1 -> (state'=1) & (todo'=color);
    [step] state=1 & detect=1 -> true;
    [step] state=0 & detect=0 -> true;
    [step] state=1 & detect=0 -> true;
endmodule

rewards "steps"
	true : 1;
endrewards
