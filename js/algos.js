// write a function that takes an array of words or phrases and returns the 
// longest word or phrase in the array
	// example input: ["long phrase","longest phrase","longer phrase"]
	// example output: "longest phrase"

// create a variable (longest) starting at 0 that will keep track of the longest word/phrase
// Create an empty string variable (largestPhrase) that will store the largest word
// loop through each element in the given list. For each element
	// if the length is larger than the current longest word,
		// the longest variable will be the value of the length of the element
		// the largestWord variable will be the word or phrase in the element.
	// otherwise,
		// continue onto the next element.
// return the biggestPhrase variable

function longestPhrase(list) {
	var longest = 0; 
	var biggestPhrase = "";
	for(var i = 0; i < list.length; i++){
		if(list[i].length > longest) {
			biggestPhrase = list[i];
			longest = list[i].length;
		} else {
			continue;
		}
	}
	return biggestPhrase;
}

// DRIVER CODE 

var word = longestPhrase(["long phrase","longest phrase","longer phrase"]);
console.log(word); // prints "longest phrase"

var name = longestPhrase(["Steve", "Danielle", "Suzanne", "Kevin"]);
console.log(name); // prints "Danielle"
