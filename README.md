# Élan

UI library and style guide

[artsy-elan-production.herokuapp.com](https://artsy-elan-production.herokuapp.com)

------

## Development server

```
foreman start -f Procfile.dev

=> Local: http://localhost:3010
=> External: http://x.x.x.x:3010
```

Asset changes are streamed to the browser (stylesheets) or auto-reloaded (javascript/templates) on save

----

# Hosted production assets

(Maybe not super useful; CSS much more so than JS though, for now at least)

```
GET /public/manifest.json

=> {
  javascripts/index.js: "javascripts/index.xxx.js",
  stylesheets/index.css: "stylesheets/index.xxx.css"
}
```

----

### TODO

* NPM publish
* Lotta re-organization
* Icons / SVG embedding
