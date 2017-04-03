// RELEASE 0
// Create a function that takes an array of words or phrases and returns the longest word or phrase in the array
// INPUT: array with a set of words and phrases
// STEPS:
//  1. Create a function that takes the array as the argument
//  2. Make a loop that finds string value of each word or phrase and adds it to each parameter in a hash using .length
//  3. Use math.max to return the property with the highest value
// OUTPUT: word or phrase that has the longest length


array = ["frisco", "samantha", "keeshma", "laila"]

function longestInput(array){
  var object = {};
  for (var i = 0; i < array.length; i++){
    var properties = array[i];
    object[properties] = array[i].length;
    var values = Object.values(object);
    var max = Math.max.apply(null,values);}
    // return object
      if (object[properties] = max){
        return properties;
      }
      else{
        return console.log("Error");
      }
}  

console.log(longestInput(array))


// RELEASE 1
// Create a function that compares two objects checking for one shared key-value pair
// INPUT: two objects with the same amount of key-value pairs
// STEPS:
//  1. Create a function separates the keys and values of each object
//  2. Iterate over both the key array and value array for matched values 
//  3. Create a conditional statement comparing both arrays returning true or false based on result
// OUTPUT: true or false

obj_1 = {name: "Sam", age: 28, gender: "female", mom: "Anna"}
obj_2 = {name: "Shawn", age: 24, gender: "male", mom: "Anna", college: "USC"}

function compareObjects(obj_1, obj_2){
  var keys1 = Object.keys(obj_1);
  var keys2 = Object.keys(obj_2);
  var values1 = Object.values(obj_1);
  var values2 = + Object.values(obj_2);
  if (keys1 = keys2 && values1 = values2)
    {return true};
  else
    {return false};
}

console.log(compareObjects(obj_1,obj_2))



// RELEASE 2
// Create a function that takes an integer for length and returns an array of string of given length
// INPUT: integer for length of array
// STEPS:
//  1. Create a function that creates an array of specified length
//  2.  
//  3. 
// OUTPUT: array with specified length (amount of integers)