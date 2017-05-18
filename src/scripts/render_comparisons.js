import '../components/comparison-charts/comparison-charts.tag'

const data = require('json!../data/additional_data.json')

riot.mount('[data-riot-mount="won-districts"]', 'comparison-charts', {
  data: [{
    data: data['wk'],
    label: 'Gewonnen Wahlkreise'
  }]
})

riot.mount('[data-riot-mount="winners-comparison"]', 'comparison-charts', {
  data: [{
    data: data['b'],
    label: 'Wahlberechtigte'
  }, {
    data: data['wb'],
    label: 'Wahlbeteiligung'
  }, {
    data: data['ws'],
    label: 'Erststimmen (absolut)'
  }, {
    data: data['ws_r'],
    label: 'Erststimmen (relativ)'
  }, {
    data: data['sp'],
    label: 'Stimmenvorsprung'
  }]
})
