// reverse function that takes a string and reverses it 
	// example input: "hello"
	// example output : "olleh"
	// create backwards variable that is an empty string 
	// loop through one less than the length of the word, subtract each iteration 
		// each iteration, add the corresponding letter of word[i] to
		// backwards variable 
	// return backwards variable, which should hold the reverse word

function reverse(word){
	backwards = "";
	for(i = word.length - 1; i >= 0; i--){
		backwards = backwards + word[i];
	}
	return backwards;
}


// DRIVER CODE 

helloReverse = reverse("hello");
steveReverse = reverse("steve");

var number = 1;
if(number == 1){
	console.log(helloReverse);
	console.log(steveReverse);
}else{
	console.log("Nope!");
}

