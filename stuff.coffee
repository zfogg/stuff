# Dependencies.
express = require "express"
path    = require "path"


# Utilities
dir = (args...) ->
  path.join.apply @, [__dirname].concat(args)


# Express
app = express()

# Configuration
app.configure "development", ->
  app.use express.favicon dir("app", "images", "favicon.ico")
  app.use require("connect-livereload")()
  app.use express.static dir(".tmp")
  app.use express.static dir("app")
  app.use express.errorHandler()
  app.set "views", dir("app")

app.configure "production", ->
  app.use express.favicon dir("public", "images", "favicon.ico")
  app.use express.static dir("public")
  app.set "views", dir("public")

app.configure ->
  app.use "/vendor", express.static dir("bower_components")
  app.set "view engine", "jade"
  app.use express.logger("dev")
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router # Router needs to be last


# Controllers
controllers = require "./lib/controllers"
api         = require "./lib/controllers/api"


# Main
app.get "/", controllers.main

# Data
app.get  "/api/stuff", api.stuff
app.get  "/api/num/integer", api.num.integer
app.get  "/api/num/decimal", api.num.decimal

# Errors
app.get "/404", controllers.notFound

# Otherwise
app.get "/*", controllers.partials


# Start server
port = process.env.PORT or 8000
app.listen port, ->
  console.log "Express ~ http://localhost:%d/ ~ %s", port, app.get("env")

