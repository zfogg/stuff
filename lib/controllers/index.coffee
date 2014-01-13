path = require("path")


exports.main = (req, res) ->
  res.render "main"

exports.notFound = (req, res) ->
  res.render 404, "404"

exports.partials = (req, res) ->
  requestedView = path.join("./", req.url.split(".")[0])
  res.render requestedView, (err, html) ->
    if err
      console.log "Render error: #{err}"
      res.redirect 404, "/404"
    else
      res.send html
