
// the procotol is synchronous with no nondeterminism (a DTMC)
dtmc

module clapper
    state_clap : [0..1];
    sound : [0..1];
    [step] (state_clap=0) -> 0.1 : (sound'=1)&(state_clap'=1) + 0.9 : (sound'=0);
    [step] (state_clap=1) -> (sound'=0);
endmodule

module microphone
    frequency_range : [0..10];

    [step] (true) -> (frequency_range'=sound);
endmodule

module gyroscope
	orientation: [-10..10] init 0;
	orientation_delta: [-10..10] init 0;

    [step] (true) -> (orientation_delta'=0) & (orientation'=orientation+0);
endmodule

module led
	color_r: [0..1];
	color_g: [0..1];
	color_b: [0..1];
	led_on: [0..1];

	[step] todo_r=0 & todo_g=0 & todo_b=0 -> (color_r'=0) & (color_g'=0) & (color_b'=0) & (led_on'=0);
	[step] todo_r!=0 | todo_g!=0 | todo_b!=0 -> (color_r'=todo_r) & (color_g'=todo_g) & (color_b'=todo_b) & (led_on'=1);
endmodule

module speaker
	frequency: [0..10];
	playingSound: [0..1];

	[step] todo_freq=0 -> (frequency'=0) & (playingSound'=0);
	[step] todo_freq!=0 -> (frequency'=todo_freq) & (playingSound'=1);
endmodule

module controller
	todo_r: [0..1];
	todo_g: [0..1];
	todo_b: [0..1];
	todo_freq: [0..10];

    	state : [0..1];

    	[step] state=0 & frequency_range!=0 -> (state'=1) & (todo_r'=1) & (todo_g'=1) & (todo_b'=1);
    	[step] state=1 & frequency_range!=0 -> true;
    	[step] state=0 & frequency_range=0 -> true;
    	[step] state=1 & frequency_range=0 -> true;
endmodule

rewards "steps"
	true : 1;
endrewards
