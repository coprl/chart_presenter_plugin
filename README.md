# Chart Presenter Plugin

A plugin for [COPRL](http://github.com/coprl/presenters) the provides easy to use charts.

Based on the [C3 charting library](https://c3js.org/examples.html).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chart_presenter_plugin', git: 'https://github.com/coprl/chart_presenter_plugin', require: false
```

And then execute:

    $ bundle

## Usage

All the charts avaialble in C3 are avaialble with this plugin.

Example POM:

    plugin :chart

    title 'Line Chart'
    text '[Line chart with sequential data](https://c3js.org/samples/simple_multiple.html).'
    chart data: {
        columns: [
            ['data1', 30, 200, 100, 400, 150, 250],
            ['data2', 50, 20, 10, 40, 15, 25]
        ]
    }

Results in the following chart:
![Line Chart](https://dl.dropbox.com/s/z0s0vnb4zw5ooxu/Screen%20Shot%202021-06-02%20at%201.02.51%20PM.png?dl=0)

Use the [DEMO](https://coprl-ruby.herokuapp.com/plugins/chart) and view source or to get started with more examples.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/coprl/chart_presenter_plugin.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the COPRL project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/coprl/coprl/blob/master/CODE-OF-CONDUCT.md).
