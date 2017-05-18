<nrwelmaps-legend class="nrwelmaps__legend">

  <h4 class="nrwelmaps__legend-title">Abweichung vom Landesdurchschnitt</h4>
  <div class="nrwelmaps__legend-row">
    <span class="nrwelmaps__legend-row-label">CDU</span>
    <div class="nrwelmaps__legend-item" each={ step in opts.steps }>
      <span class="nrwelmaps__legend-color" style="background-color:{ parent.getColor(step, 'greys') }" />
      <span class="nrwelmaps__legend-label
        { nrwelmaps__legend-label--black: parent.opts.steps.indexOf(step) < 3 }">{ step }</span>
    </div>
  </div>
  <div class="nrwelmaps__legend-row">
    <span class="nrwelmaps__legend-row-label">SPD</span>
    <div class="nrwelmaps__legend-item" each={ step in opts.steps }>
      <span class="nrwelmaps__legend-color" style="background-color:{ parent.getColor(step, 'reds') }" />
      <span class="nrwelmaps__legend-label
        { nrwelmaps__legend-label--black: parent.opts.steps.indexOf(step) < 3 }">{ step }</span>
    </div>
  </div>

  this.getColor = (step, k) => this.opts.colors[k][this.opts.steps.indexOf(step)]

</nrwelmaps-legend>
