# TODO: Write documentation for `Syntaxer`
module Syntaxer
  VERSION = "0.1.0"

  class SourceHighlight
    def self.highlight(code : String, lang : String, theme : String = "default.css", format : String = "html")
      input = IO::Memory.new code
      output = IO::Memory.new
      Process.run("source-highlight", ["-s", lang, "--style-css-file", theme, "-f", format], input: input, output: output)
      output.to_s
    end
  end

  class Highlight
    def self.highlight(code : String, lang : String, theme : String = "base16/monokai", inline_style : Bool = true, format : String = "html", wrap_pre : Bool = true)
      input = IO::Memory.new code
      output = IO::Memory.new
      Process.run("highlight", ["--syntax", lang, inline_style ? "--inline-css" : "", "--fragment", wrap_pre ? "--enclose-pre" : "", "--style", theme, "-O", format], input: input, output: output)
      output.to_s
    end
  end
end
