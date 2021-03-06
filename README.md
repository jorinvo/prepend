# Prepend

[![Build Status](https://travis-ci.org/jorinvo/prepend.svg?branch=master)](https://travis-ci.org/jorinvo/prepend)

*This project is mostly for learning purposes.*

`prepend` prepends one or more command line arguments given to it to each line from stdin and writes that to stdout.


## Install

- Make sure you have [Elixir](https://elixir-lang.org/) installed. On a Mac that is as quick as `brew install elixir`
- Run `mix deps.get` and `mix escript.build` or combine them as `mix do deps.get, escript.build`


## Usage

Use the compiled binary:

```
$ echo -e "ice cream\npizza\ncats" | ./prepend "I like "
I like ice cream
I like pizza
I like cats
```

Or from within the repo, run prepend directly via mix:

```
$ echo -e "ice cream\npizza\ncats" | mix prepend "I like "
I like ice cream
I like pizza
I like cats
```


## Development

- Start `mix test.watch` and develop TDD
- Or run the tests only once with `mix test`
- Property tests can be run with `mix test --only property`
- To give the code a try in the REPL use `iex -S mix`. Try this:

``` elixir
["one", "two"] |> Prepend.stream_lines("$ ") |> Enum.to_list
```

- Format code using `mix format`
- Lint code using `mix credo` and `mix dialyzer`


## License

[MIT](./LICENSE)
