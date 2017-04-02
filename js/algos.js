// RELEASE 0
// Create a function that takes an array of words or phrases and returns the longest word or phrase in the array
// INPUT: array with a set of words and phrases
// STEPS:
//  1. Create a function that takes the array as the argument
//  2. Make a loop that finds string value of each word or phrase and adds it to each parameter in a hash using .length
//  3. Use math.max to grab the value pair that has the highest value and returns the property
// OUTPUT: word or phrase that has the longest length


array = ["frisco", "samantha", "keeshma", "laila"]

function longestInput(array){
  var object = {};
  for (var i = 0; i < array.length; i++){
    var properties = array[i];
    object[properties] = array[i].length;
  }
  return object;
}

console.log(longestInput(array))
