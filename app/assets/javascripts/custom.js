$(document).ready(function() {
  var myTextArea = document.getElementById("answer_body");
  if (myTextArea){
    var myCodeMirror = CodeMirror.fromTextArea(myTextArea, {
      theme: "lesser-dark",
      mode:  "css",
      onChange: function(cm) {
        $("#answer_body").val(cm.getValue())
        textss = cm.getValue()
        var text = cm.getValue().replace(/([=\[\].:#a-z0-9_\- ])*(\{|,)/ig, function(s, group){
          return ((s.indexOf("@") > -1) || (s.indexOf("%") > -1)) ? s : " #draft " + s

        })
        $("#draft-style").html(text);
       }
    });
  }
  $('.main a').each(function() {
   if (jQuery(this).attr('href')  ===  window.location.pathname) {
     jQuery(this).addClass('active');
   }});
  document.createElement("article");
  document.createElement("aside");
  document.createElement("footer");
  document.createElement("header");
  document.createElement("hgroup");
  document.createElement("nav");


   $('.showcode').bind("click", function(e){
    e.preventDefault();
    $("#solution").toggle();
    $('.showcode').html("pokaż <br/> rozwiązanie");
    if ($("#solution").is(":visible")){
       $('.showcode').html("Ukryj <br/> rozwiązanie");
       $.scrollTo('#solution', 800 )
     }
   })
   $('.colory').bind("click", function(e){
    e.preventDefault();
    $(".colory ul").toggle();
   });
   $("ul#tabs").tabs("div.tabs_holder > div", {tabs: 'li'});
});
