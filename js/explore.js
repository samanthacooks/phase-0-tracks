// Build a function to reverse a given string
// INPUT: a string (variable)
// STEPS:
//  1. Declare a variable with string hello
//  2. Create a loop function with index of 0, set index to loop as long as it is less than the string length, set the index counter to 1 using i++
//  3. Print the console log in the function to print each character backwards using 


var string = "Hello";


function reverseString(string){
  if (4 == 4){
    var backwards = "";
      for (var i = string.length - 1; i >= 0; i--)
      backwards += string[i];
      return backwards;
  }
  else {
  return console.log("Nothing to say or do.")
  }
}


console.log(reverseString(string))
console.log(reverseString("Samantha"))
console.log(reverseString("It is Sunday."))
console.log(reverseString("racecar"))
