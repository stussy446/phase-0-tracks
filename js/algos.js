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
	var biggestPhrase = "";
	for(var i = 0; i < list.length; i++){
		if(list[i].length > biggestPhrase.length) {
			biggestPhrase = list[i];
		} 
	}
	return biggestPhrase;
}

// function that takes two objects and checks to see if the objects share
// at lest one key-value pair
	// example input: {name: "Steven", age: 54}, {name: "Tamir", age: 54}
	// example output: true 
// make empty list variables for the keys and values of both objects (4 total)
// go through both objects using separate for loops 
	// for each iteration, add the key to the appropriate key list and the value
	// to the appropriate value list 
// do another loop that goes as many times as the length of one of our lists
	// if the keys are equal and the values are equal
		// return true 
	// else
		// move on to the next one 
	// if the loop ends without returning true return false 

function matchingPairs(firstObject, secondObject){
	for(var item in firstObject){
		if (firstObject[item] == secondObject[item]){
			return true; 
		}
	}
	return false;
}

// write a function that takes an integer for length, and builds and
// returns an array of strings of the given length
	// example input: 3 
	// example output: ["randomword1", "randomword2", randomword3]
	// words should be of random length with a minumum of 1 letter and 
	// maximum of 10 letters 
// Create an empty array (randomList)
// create a variable that holds the alphabet
// Make a for loop that iterates as many times as the length argument
	// for each iteration, assign the value of the element in randomList 
	// to an empty string and set a count variable to 0.
	// while the count is less than a random number up to 10
		// add a random letter from the alphabet to the value of the element
		// in our randomList
		// add 1 to the count 
// return randomList variable 

function generateNumber(multiplier){
	return Math.floor(Math.random() * multiplier);
}

function random(length){
	var randomList = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for(var i = 0; i < length; i ++){
		randomList[i] = "";
		var count = 0;
		while(count < 1 + generateNumber(11)) {
			randomList[i] = randomList[i] + alphabet[generateNumber(alphabet.length)];
			count += 1; 
		}
	}
	return randomList;
}




// DRIVER CODE 

var word = longestPhrase(["long phrase","longest phrase","longer phrase"]);
console.log(word); // prints "longest phrase"

var name = longestPhrase(["Steve", "Danielle", "Suzanne", "Kevin"]);
console.log(name); // prints "Danielle"

//var doesItMatch = matchingPairs({name: "Steven", age: 54}, {name: "Tamir", age: 54});
//console.log(doesItMatch); // true 
//var doesNotMatch = matchingPairs({name: "taco", age: 50}, {name: "Tamir", age: 54});
//console.log(doesNotMatch); // false 

//for(var i = 0; i < 10; i++){
	//var array = random(3);
	//console.log(array);
	//console.log(longestPhrase(random(3)));
//}

