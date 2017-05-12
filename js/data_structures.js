var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Joe", "Ali", "Ruby"];
colors.push("purple");
names.push("Buck");

// keys should be names, values should be color 
var horses = {};
for(i = 0; i < colors.length; i++){
	horses[names[i]] = colors[i];
}



// DRIVER CODE 

console.log(colors);
console.log(names);
console.log(horses)