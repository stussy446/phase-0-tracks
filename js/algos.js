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

// function that takes two objects and checks to see if the objects share
// at lest one key-value pair
	// example input: {name: "Steven", age: 54}, {name: "Tamir", age: 54}
	// example output: true 
// go through both objects using a for loop, loop as many times as the
// longest object length. for each iteration
	// assign the key and value of both pairs to variables (key, value)
	// if the keys are equal and the values are equal
		// return true 
	// else
		// move on to the next one 
	// if the loop ends without returning true return false 

function matchingPairs(firstObject, secondObject){
	var keyList1 = [];
	var valueList1 = [];
	var keyList2 = [];
	var valueList2 = [];
	for(item in firstObject){
		keyList1.push(item);
		valueList1.push(firstObject[item]);
	}
	for(item in secondObject) {
		keyList2.push(item);
		valueList2.push(secondObject[item]);
	}
	for(i = 0; i < keyList1.length; i++){
		if(keyList1[i] == keyList2[i] && valueList1[i] == valueList2[i]){
			return true;
		} else {
			continue;
		}
	}
	return false;
}



// DRIVER CODE 

//var word = longestPhrase(["long phrase","longest phrase","longer phrase"]);
//console.log(word); // prints "longest phrase"

//var name = longestPhrase(["Steve", "Danielle", "Suzanne", "Kevin"]);
//console.log(name); // prints "Danielle"

var doesItMatch = matchingPairs({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(doesItMatch); // true 
var doesNotMatch = matchingPairs({name: "taco", age: 50}, {name: "Tamir", age: 54});
console.log(doesNotMatch); // false 
