// pragma circom 2.0.0;


// f(x,y) = x^2 * y + x * y^2 + 17;

// Signal definition
// 1. All inputs are signal
// 2. Every time you multiply signals together, you need to define a new signal
// 3. Only one signal can be multiplied at once to get a new signal
// 4. All outputs are signals

template F(){
	signal input x;
	signal input y;
	signal output o;

	signal m1 <== x * x;
	signal m2 <== m1 * y;


	signal m3 <== y * y;
	signal m4 <== m3 * x;
	
	o <== m2 + m4 + 17;

}

component main = F(); 
