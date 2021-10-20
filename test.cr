require "./src/syntaxer.cr"

puts Syntaxer::Syntect.highlight(code: "print 'hello world'", lang: "py")
