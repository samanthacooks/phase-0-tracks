
console.log("I'm working");

var body = document.getElementsByTagName("body")[0];
function changeBackgroundColor(){
  body.style.backgroundColor = "#CCC";
}

changeBackgroundColor();

var newParagraph = document.createElement("p");
var pText = document.createTextNode("I'm a new paragraph and I was added with javascript");
newParagraph.appendChild(pText);
var div = document.getElementsByTagName("div")[0];
var image = document.getElementsByTagName("img")[0];

function addParagraph(){
  div.appendChild(newParagraph);
}

image.addEventListener("click", addParagraph);