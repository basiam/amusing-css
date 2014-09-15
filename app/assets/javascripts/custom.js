$(document).ready(function() {
  var myTextArea = document.getElementById("answer_body");
  if (myTextArea){
    myCodeMirror = CodeMirror.fromTextArea(myTextArea, {
      theme: "lesser-dark",
      mode:  "css",
      onChange: function(cm) {
        $("#answer_body").val(cm.getValue())
        textss = cm.getValue()
        var text = cm.getValue().replace(/([=\[\].:#a-z0-9_\- \)\(])*(\{|,)/ig, function(s, group){
          return ((s.indexOf("@") > -1) || (s.indexOf("%") > -1)) ? s : " #draft " + s
        })
        $("#draft-style").html(text);
       }
    });
  }

  var loadAnswer = function(){
    var lesson = window.location.pathname;
    var answer = window.localStorage.getItem(lesson);
    if(answer){
      myCodeMirror.setValue(answer);
    }
  };

  loadAnswer();

  var saveAnswer = function(){
    var lesson = window.location.pathname;
    var answer = $('#answer_body').val();
    window.localStorage.setItem(lesson, answer);
  };

  $('form#answer').on('submit', function(e){
    e.preventDefault();

    saveAnswer();
  });

  $('.copycode').on('click', function(e){
    e.preventDefault();

    loadAnswer();
  });

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
   $('.colory span').bind("click", function(e){
    e.preventDefault();
    $(".colory ul").toggle();
   });
   $('.clickable').bind("click", function(e){
    $(e.currentTarget).find(".shy").toggle();
   });
});
