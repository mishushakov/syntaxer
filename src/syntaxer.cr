# TODO: Write documentation for `Syntaxer`
module Syntaxer
  VERSION = "0.1.0"

  class SourceHighlight
    def self.highlight (code : String, lang : String, theme : String = "default.css", format : String = "html")
      input = IO::Memory.new code
      output = IO::Memory.new
      Process.run("source-highlight", ["-s", lang, "--style-css-file", theme, "-f", format], input: input, output: output)
      output.to_s
    end
  end
end
