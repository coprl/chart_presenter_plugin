require_relative './chart/component'

module Coprl
  module Presenters
    module Plugins
      module Chart
        module DSLComponents
          def chart(**attributes, &block)
            self << Chart::Component.new(parent: self, **attributes, &block)
          end
        end
        module WebClientComponents
          def view_dir_chart(pom)
            File.join(__dir__, '../../../../views/chart')
          end
          # The string returned from this method will be added to the HTML header section of the page layout
          # It will be called once for the page.
          # The pom is passed along with the sinatra render method.
          def render_header_chart(pom, render:)
            render.call :erb, :chart_header, views: view_dir_chart(pom)
          end

          def render_chart(comp,
                           render:,
                           components:,
                           index:)
            render.call :erb, :chart, views: view_dir_chart(components),
                        locals: {comp: comp,
                                 components: components, index: index}
          end
        end
      end
    end
  end
end
