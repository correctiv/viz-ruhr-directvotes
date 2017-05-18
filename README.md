# viz-ruhr-directvotes

Show how many direct votes (aka "Erststimmen") where needed to win districts in North-Rhine Westphalias state elections 2017.

[See preview of this viz via gh-pages](https://correctiv.github.io/viz-ruhr-directvotes/dist/)

build stack based on [this fork](https://github.com/simonwoerpel/yet-another-webpack-es6-riot-starterkit) of [this great startkit](https://github.com/wbkd/yet-another-webpack-es6-starterkit)

## visualization setup for correctiv cms-plugin

### javascript

```
dist/bundle.js
```

### styles

```
dist/styles/bundle.css
```

### html

```html
<figure class="figure -full-width">
  <h2>Stärkste und schwächste Wahlkreise der AfD bei der Landtagswahl</h2>
  <div class="figure__container">
    <section class="nrwelmaps__section">
      <div data-riot-mount="nrwelmaps__app"></div>
    </section>
  </div>
  <div class="figure__credits">
    <p><strong>Daten:</strong> <a href="https://www.wahlergebnisse.nrw.de/landtagswahlen/2017/index.shtml">Der Landeswahlleiter / Innenministerium Nordrhein-Westfalen.</a></p>
  </div>
</figure>
```


### Installation

```
npm install
```

### Start Dev Server

```
npm run dev
```

### Build Prod Version

```
npm run build
```

### Features:

* ES6 Support via [babel-loader](https://github.com/babel/babel-loader)
* SASS Support via [sass-loader](https://github.com/jtangelder/sass-loader)
* Linting via [eslint-loader](https://github.com/MoOx/eslint-loader)
* Hot Module Replacement

When you run `npm run build` we use the [extract-text-webpack-plugin](https://github.com/webpack/extract-text-webpack-plugin) to move the css to a separate file and included in the head of your `index.html`, so that the styles are applied before any javascript gets loaded. We disabled this function for the dev version, because the loader doesn't support hot module replacement.
