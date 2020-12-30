import os

// +    Increases element under pointer
// -    Decrases element under pointer
// >    Increases pointer
// <    Decreases pointer
// [    Starts loop, flag under pointer
// ]    Indicates end of loop
// .    Outputs ASCII code under pointer
// ,    Reads char and stores ASCII under ptr
fn main() {
	program := get_program()
	println(program)
}

fn get_program() string {
	if os.args.len > 1 {
		program_file := os.args[1]
		program := os.read_file(program_file) or { panic('cannot read $program_file') }
		return program
	} else {
		return '[-]>[-]<>+++++++[<+++++++>-]<+++.--.'
	}
}
