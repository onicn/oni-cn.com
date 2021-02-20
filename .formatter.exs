# Used by "mix format"
[
  inputs: [
    "{mix,.formatter}.exs",
    "{config,lib,test}/**/*.{ex,exs}",
    "priv/data/*.ex"
  ],
  locals_without_parens: [
    section: :*,
    content: :*
  ]
]
