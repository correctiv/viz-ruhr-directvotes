<simple-bar class="comparison-charts__bar comparison-charts__bar--{ opts.label.toLowerCase() }" style="width:{ opts.data[opts.label].width }%;">
  <span class="comparison-charts__bar-label">{ opts.data[opts.label].value }</span>
  <span class="comparison-charts__bar-group-label">{ opts.label }</span>
</simple-bar>


<comparison-charts class="comparison-charts__container">

  <div class="comparison-charts__chart">
    <div each={ item in opts.data } class="comparison-charts__bar-group">
      <span class="comparison-charts__bar-group-title">{ item.label }</span>
      <simple-bar label="CDU" data={ item.data } />
      <simple-bar label="SPD" data={ item.data } />
    </div>
  </div>

</comparison-charts>
