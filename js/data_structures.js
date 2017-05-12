var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Joe", "Ali", "Ruby"];
colors.push("purple");
names.push("Buck");

// keys should be names, values should be color 
var horses = {};
for(i = 0; i < colors.length; i++){
	horses[names[i]] = colors[i];
}

function Cars(color, speed, model){
	console.log("New car, ", this);
	
	this.color = color;
	this.speed = speed;
	this.model = model;

	this.description = function(){
		console.log("The car's color is " + this.color);
		console.log("The car's max speed is " + this.speed);
		console.log("The car's model is " + this.model);
	}

	console.log("INITIALIZATION COMPLETE!");
}



// DRIVER CODE 

//console.log(colors);
//console.log(names);
//console.log(horses);

var newCar = new Cars("red", 150, "Porche");
var newCar2 = new Cars("blue", 20, "wagon");
var oldCar = new Cars("grey", 0, "pickup");
console.log(newCar)
newCar.description();
console.log(newCar2);
newCar2.description();
console.log(oldCar);
oldCar.description();
