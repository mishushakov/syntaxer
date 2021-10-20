require "./src/syntaxer.cr"

puts Syntaxer::Pygments.highlight(code: "print 'hello world'", lang: "python", params: "linenos,lineanchors=kk,anchorlinenos")
