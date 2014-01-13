
exports.stuff = (req, res) ->
  res.json stuff: true

exports.num =
  integer: (req, res) ->
    res.json
      n: Math.floor(Math.random()*10) + 1

  decimal: (req, res) ->
    res.json
      n: Math.random()*10
