module ApplicationHelper
  def draft_css(text)
    cssed_text(text, "draft")
  end
  def goal_css(text)
    cssed_text(text, "goal")
  end

  def cssed_text(text, string)
    return text.gsub(/[.#a-z0-9_\- ]*(\{|,)./) {|m| "##{string} #{m}"}
  end

  def basic_html
    %s{
<!DOCTYPE html>
<html lang="pl">
<head>
  <title>Webmuses</title>
  <meta property="og:title" content="WebMuses"/>
  <link href="/assets/application-5e3cd3922822fce170297c108e897d80.css"
        media="all" rel="stylesheet" type="text/css">
</head>
<body>
 <div class="container">
    <div class="menu left">
      <a href="/">home</a>
      <a class="lcenter" href="/wydarzenia">wydarzenia</a>
    </div>
    <a href="/" id="brand">
      <img src="/assets/logo.png" alt="logo"/>
    </a>
 </div>
</body>
</html>}

  end

  def html_elements
    %s{ <p> <div> <ul> <li> <span> }
  end

  def html_tag
    "<tag attribute1='value1' attribute2='value2'>content</tag>"
  end
  def pl_html_tag
    '<nazwa-znacznika atrybut="wartosc" atrybut2="wartosc2">zawartosc</nazwa-znacznika>'
  end
end
