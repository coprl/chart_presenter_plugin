class Chart {
  constructor(element) {
    this.data = JSON.parse(element.dataset.chartOptions);
    if (this.data.axis && this.data.axis.y && this.data.axis.y.tick && this.data.axis.y.tick.format) {
      if (this.data.locale) {
        const d3Format = d3.formatLocale(this.data.locale);
        this.data.axis.y.tick.format = d3Format.format(this.data.axis.y.tick.format)
      } else {
        this.data.axis.y.tick.format = d3.format(this.data.axis.y.tick.format)
      }
    }
    this.chart = c3.generate(Object.assign({bindto: element}, this.data));
  }
}
