$(document).ready(function() {
  var myTextArea = document.getElementById("answer_body");
  var myCodeMirror = CodeMirror(function(elt) {
      myTextArea.parentNode.replaceChild(elt, myTextArea);
  }, {
    value: myTextArea.value,
    theme: "lesser-dark",
    mode:  "css",
    onChange: function(cm) {
      var text = cm.getValue().replace(/\#/g, "#draft #").replace(/(?!png)(\.)(?!png)/, "#draft .");
      console.log(text);
      $("#draft-style").html(text);
     }
  });
  $('.menu a').each(function() {
   if (jQuery(this).attr('href')  ===  window.location.pathname) {
     jQuery(this).addClass('active');
   }});
  $("ul#tabs").tabs("div.tabs_holder > div", {tabs: 'li'});
  document.createElement("article");
  document.createElement("aside");
  document.createElement("footer");
  document.createElement("header");
  document.createElement("hgroup");
  document.createElement("nav");
});
