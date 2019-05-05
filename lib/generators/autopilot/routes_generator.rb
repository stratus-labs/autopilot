module Autopilot
  module Generators
    class RoutesGenerator < Rails::Generators::Base
      desc "This generator needs a description"
      class_option :home, type: :boolean
      source_root File.expand_path("../../../templates", __FILE__)

      def do_magic
        puts "Setting up routes..."
        @home = options['home']

        template "controllers/pages_controller.rb", "app/controllers/pages_controller.rb"
        template "views/pages/dash.html.erb", "app/views/pages/dash.html.erb"

        if @home
          puts "Set up marketing home page..."

          template "views/pages/home.html.erb", "app/views/pages/home.html.erb"
          template "routes-with-home.rb", "config/routes.rb", force: true
        else
          template "routes-without-home.rb", "config/routes.rb", force: true
        end
      end
    end
  end
end
