# TODO: Lines
# TODO: Lines highlighting
# TODO: Infer language by filename
module Syntaxer
  VERSION = "0.1.1"

  class SourceHighlight
    def self.highlight(code : String, lang : String, theme : String = "default.css", format : String = "html", params : Array(String) = [] of String)
      input = IO::Memory.new code
      output = IO::Memory.new
      Process.run("source-highlight", ["-s", lang, "--style-css-file", theme, "-f", format] + params, input: input, output: output)
      output.to_s
    end
  end

  class Highlight
    def self.highlight(code : String, lang : String, theme : String = "base16/monokai", inline_style : Bool = true, format : String = "html", wrap : Bool = true, params : Array(String) = [] of String)
      input = IO::Memory.new code
      output = IO::Memory.new
      Process.run("highlight", ["--syntax", lang, inline_style ? "--inline-css" : "", "--fragment", wrap ? "--enclose-pre" : "", "--style", theme, "-O", format] + params, input: input, output: output)
      output.to_s
    end
  end

  class Pygments
    def self.highlight(code : String, lang : String, theme : String = "default", inline_style : Bool = true, format : String = "html", wrap : Bool = true, params : String = "")
      input = IO::Memory.new code
      output = IO::Memory.new
      Process.run("pygmentize", ["-l", lang, "-O", "style=#{theme},noclasses=#{inline_style},nowrap=#{!wrap},#{params}", "-f", format], input: input, output: output)
      output.to_s
    end
  end

  class Syntect
    def self.highlight(code : String, lang : String, theme : String = "base16-ocean.dark")
      input = IO::Memory.new code
      output = IO::Memory.new
      Process.run("syntect-cli", ["--lang", lang, "--theme", theme], input: input, output: output)
      output.to_s
    end
  end
end
