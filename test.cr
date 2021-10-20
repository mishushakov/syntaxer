require "./src/syntaxer.cr"

puts Syntaxer::SourceHighlight.highlight(code: "print 'hello world'", lang: "python", theme: "sh_darkblue.css")
