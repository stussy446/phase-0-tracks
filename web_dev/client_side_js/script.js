var header_border = document.getElementById("header");
header_border.style.border = "3px solid red";

var newHeading = document.createElement('h2');
var h2Text = document.createTextNode("This is our added header!");
newHeading.appendChild(h2Text);

header_border.appendChild(newHeading);
