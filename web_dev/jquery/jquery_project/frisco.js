$(document).ready(function(){


$(".picture:eq(1)").hide(500).show(800);

$(".picture:not(2)").animate({opacity: 0.7}, 500);

$(".med-header").hover(function(){
  $(this).css("color", "deeppink")
});

$("button").click(function(){
  alert("You clicked it :)");
});


  });
