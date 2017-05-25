$(document).ready(function(){
  
  $("h1").click(function(){
    $(this).css("color", "red");
  });

  $("#sora").on({
    mousedown: function(){
      $(this).hide();
    },
    mouseleave: function(){
      $(this).show();
    }
  });

  $("h3").dblclick(function(){
    alert("You double clicked this!");
  });

});