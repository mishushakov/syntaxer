# syntaxer

Multi-backend syntax highlighter for Crystal

![syntaxer Demo](https://i.imgur.com/i7JhGwn.png)

[Themes demo](https://mishushakov.github.io/syntaxer)

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
    - `Highlight` requires [highlight](https://gitlab.com/saalen/highlight)
    - `Pygments` requires [pygments](https://pygments.org)
    - `Syntect` requires [syntect-cli](https://github.com/mishushakov/syntect-cli)

## Usage

```crystal
require "syntaxer"
```

### `Syntaxer::SourceHighlight`

#### Options

```crystal
def self.highlight(code : String, lang : String, theme : String = "default.css", format : String = "html", params : Array(String) = [] of String)
```

#### Example

```crystal
Syntaxer::SourceHighlight.highlight(code: "print 'hello world'", lang: "python")
```

**Output**

```html
<pre><tt><font color="#ffff60">print</font><font color="#C7C7C7"> </font><font color="#ffa0a0">'hello world'</font></tt></pre>
```

### `Syntaxer::Highlight`

#### Options

```crystal
def self.highlight(code : String, lang : String, theme : String = "base16/monokai", inline_style : Bool = true, format : String = "html", wrap : Bool = true, params : Array(String) = [] of String)
```

#### Example

```crystal
Syntaxer::Highlight.highlight(code: "print 'hello world'", lang: "python")
```

**Output**

```html
<pre style="color:#f8f8f2; background-color:#272822; font-size:10pt; font-family:'Courier New',monospace;white-space: pre-wrap;"><span style="color:#ae81ff; font-weight:bold">print</span> <span style="color:#a6e22e">&#39;hello world&#39;</span>
</pre>
```

### `Syntaxer::Pygments`

#### Options

```crystal
def self.highlight(code : String, lang : String, theme : String = "default", inline_style : Bool = true, format : String = "html", wrap : Bool = true, params : String = "")
```

#### Example

```crystal
Syntaxer::Pygments.highlight(code: "print 'hello world'", lang: "python")
```

**Output**

```html
<div class="highlight" style="background: #f8f8f8"><pre style="line-height: 125%;"><span></span><span style="color: #008000">print</span> <span style="color: #BA2121">&#39;hello world&#39;</span>
</pre></div>
```

### `Syntaxer::Syntect`

#### Options

```crystal
def self.highlight(code : String, lang : String, theme : String = "base16-ocean.dark")
```

#### Example

```crystal
Syntaxer::Syntect.highlight(code: "print 'hello world'", lang: "py")
```

**Output**

```html
<pre style="background-color:#2b303b;">
<span style="color:#b48ead;">print </span><span style="color:#c0c5ce;">&#39;</span><span style="color:#a3be8c;">hello world</span><span style="color:#c0c5ce;">&#39;</span></pre>
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
