module Autopilot
  module Generators
    class RoutesGenerator < Rails::Generators::Base
      desc "This generator needs a description"
      source_root File.expand_path("../../templates", __FILE__)

      def run
        puts "Setting up routes..."
        include_home_page = Autopilot.configuration.home_page

        # add dash and routes:
        # copy_file "../../templates/pages_controller.rb", "app/controllers/pages_controller.rb"
        template "controllers/pages_controller.rb", "app/controllers/pages_controller.rb"
        # copy_file "../../templates/views/pages/dash.html.erb", "app/views/pages/dash.html.erb"
        template "views/pages/dash.html.erb", "app/views/pages/dash.html.erb"

        # Routes:
        template "routes.rb", "config/routes.rb", force: true

        if include_home_page
          puts "Set up marketing home page"

          # copy_file "../../templates/views/pages/home.html.erb", "app/views/pages/home.html.erb"
          template "views/pages/home.html.erb", "app/views/pages/home.html.erb"
          route "root to: 'pages#home'"
        else
          route "root to: 'devise/sessions#new'"
        end
      end
    end
  end
end
