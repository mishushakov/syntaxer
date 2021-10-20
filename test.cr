require "./src/syntaxer.cr"

puts Syntaxer::Highlight.highlight(code: "print 'hello world'", lang: "python")
