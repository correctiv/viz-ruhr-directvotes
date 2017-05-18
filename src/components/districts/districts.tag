import './district.tag'

<nrwelmaps-districts class="nrwelmaps__districts-container">

  <div class="nrwelmaps__districts-group"
    each={ group in getGroups() }>
    <h3 class="nrwelmaps__districts-group-title">
      { group.label }
    </h3>

    <nrwelmaps-district
      each={ feature in group.features }
      feature={ feature }
      breakpoint={ parent.opts.breakpoint }
      active={ feature.data.id === parent.active }
    />

  </div>

  this.active = null

  riot.control.on(riot.EVT.updateSelectedDistrict, ({data}) => {
    this.update({active: data.id})
  })

  riot.control.on(riot.EVT.emptyInfobox, () => {
    this.update({active: null})
  })

  this.getGroups = () => {
    const features = this.opts.data.features
    const high = features.sort((a, b) => (b.data.ms - a.data.ms)).slice(0, 20)
    const low = features.sort((a, b) => (a.data.ms - b.data.ms)).slice(0, 20)
    if (this.opts.breakpoint == 'xlarge') {
      return [{
        label: 'Am meisten Erststimmen',
        features: high
      }, {
        label: 'Am wenigsten Erststimmen',
        features: low
      }]
    } else {
      return [{
        label: 'Am meisten Erststimmen',
        features: high.slice(0, 10)
      }, {
        label: 'Am wenigsten Erststimmen',
        features: low.slice(0, 10)
      }]
      }
    }
</nrwelmaps-districts>
