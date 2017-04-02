// Build a function to reverse a given string
// INPUT: a string (variable)
// STEPS:
//  1. Declare a variable with string hello
//  2. Declare a placeholder variable in the function for the reversed word
//  3. Create a loop function with index of the string length (minus one), set index to greater than or equal to the string length, set the index counter to 1 using i--
//  4. Set increment command to print each character of string reverse, using the index into the backwards placeholder variable
//  5. Return backwards variable string value


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
