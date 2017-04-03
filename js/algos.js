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


// RELEASE 2
// Create a function that compares two objects checking for one shared key-value pair
// INPUT: two objects with the same amount of key-value pairs
// STEPS:
//  1. Create a function separates the keys and values of each object
//  2. Iterate over both the key array and value array for marched values 
//  3. Use math.max to return the property with the highest value
// OUTPUT: true or false
