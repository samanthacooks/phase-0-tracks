var colors_array = ["purple", "green", "brown", "white"];

var names_array = ["Ed", "Tom", "Lucy", "Charlie"];

colors_array.push("orange");
names_array.push("Bill");

console.log(colors_array);
console.log(names_array);




var horses = {};

if(colors_array.length === names_array.length){
for (var i = 0; i < colors_array.length; i++){
var name = names_array[i];
var color = colors_array[i];
horses[name] = color;
    console.log(horses);
}
}
else {
  console.log("Can't be grouped");
}




function Car(maxSpeed, isSafe, color){
  this.maxSpeed = maxSpeed;
  this.isSafe = isSafe;
  this.color = color;

  this.drive = function() {if (this.isSafe === true)
                              {console.log(this.color + " car is driving at " + this.maxSpeed);}
                              else
                              {console.log("No driving until you have a safe car.");}
                          }
}

var volvo = new Car(60,true,"blue");

volvo.isSafe = false
console.log(volvo)
volvo.drive()


var jeep = new Car(150,false,"red");
console.log(jeep)
jeep.isSafe = true
jeep.drive()

