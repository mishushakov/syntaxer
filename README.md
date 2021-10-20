# syntaxer

Multi-backend syntax highlighter for Crystal

![syntaxer Demo](demo.png)

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     syntaxer:
       github: mishushakov/syntaxer
   ```

2. Run `shards install`
3. Install highlighting backend(s)
    - `SourceHighlight` requires [source-highlight](https://www.gnu.org/software/src-highlite)

## Usage

```crystal
require "syntaxer"
```

with `SourceHighlight`:

options:

```crystal
def self.highlight (code : String, lang : String, theme : String = "default.css", format : String = "html")
```

example:

```crystal
Syntaxer::SourceHighlight.highlight(code: "print 'hello world'", lang: "python")
```

output:

```html
<!-- Generator: GNU source-highlight 3.1.9
by Lorenzo Bettini
http://www.lorenzobettini.it
http://www.gnu.org/software/src-highlite -->
<pre><tt><font color="#ffff60">print</font><font color="#C7C7C7"> </font><font color="#ffa0a0">'hello world'</font></tt></pre>
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (https://github.com/mishushakov/syntaxer/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Mish Ushakov](https://github.com/mishushakov) - creator and maintainer
