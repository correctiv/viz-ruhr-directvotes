import * as d3 from '../../scripts/lib/d3.js'
import renderSymbol from '../districts/render_district.js'
// import './election-result.tag'

<raw-html>

  this.updateContent = () => {
    this.root.innerHtml = this.opts.content
  }

  this.on('update', () => this.updateContent())
  this.updateContent()

</raw-html>

<nrwelmaps-infobox class="nrwelmaps__infobox-wrapper">

  <div if={ feature } class="nrwelmaps__infobox">
    <h3 class="nrwelmaps__infobox-title">{ feature.data.n }</h3>
    <dl>
      <dt>{ feature.data.w }</dt>
      <dd>Gewinner</dd>
      <dt>{ feature.data.ws }</dt>
      <dd>Erststimmen</dd>
    </dl>
    <p>{ getMsg(feature.data.ms )}</p>
    <button class="btn nrwelmaps__infobox__close-btn"
      onclick={ close }>x</button>
    <div data-d3="map-symbol" class="nrwelmaps__infobox__map-symbol"></div>
  </div>

  <div if={ !feature && opts.breakpoint !== 'small'}
    class="nrwelmaps__infobox">
    <p class="nrwelmaps__infobox__hint">Wähle einen Wahlkreis aus der Liste links aus oder fahre mit der Maus (oder klicke mit Deinem Touchpad) über die Karte von NRW, um zu erfahren, mit wie vielen Erststimmen ein Wahlkreis gewonnen wurde.</p>
  </div>

  riot.control.on(riot.EVT.updateInfobox, feature => {
    this.update({feature})
    this.renderMapSymbol(feature)
  })

  riot.control.on(riot.EVT.emptyInfobox, () => {
    this.update({feature: null})
  })

  this.close = () => {
    if (this.opts.breakpoint === 'small') {
      riot.control.trigger(riot.EVT.closeInfobox)
    }
  }

  this.renderMapSymbol = feature => {
    const selection = d3.select('[data-d3="map-symbol"]')
    selection.selectAll('*').remove()
    renderSymbol({selection, feature})
  }

  this.getMsg = val => {
return `Dieser Wahlkreis wurde mit ${val.toString().replace('-', '')} Wählerstimmen ${val > 0 ? 'mehr' : 'weniger'} als im Landesdurchschnitt gewonnen.`
  }

</nrwelmaps-infobox>
