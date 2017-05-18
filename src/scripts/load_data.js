import * as topojson from 'topojson'

const geoSource = require('json!../data/lwk_nrw.simplified.topo.json')  // FIXME config.json
const data = require('json!../data/directvotes.json')

export default ({
  topoLayerName,
  colors
}) => {
  const geoData = topojson.feature(geoSource, geoSource.objects[topoLayerName])
  geoData.features.map(f => {
    const id = f.properties.LWKNR
    f.data = data[id],
    f.data.id = id,
    f.color = colors[f.data.w === 'SPD' ? 'reds' : 'greys'][+f.data.c]
  })
  return geoData
}
