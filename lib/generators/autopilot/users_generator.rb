module Autopilot
  module Generators
    class UsersGenerator < Rails::Generators::Base
      desc "This generator needs a description"

      def run
        puts "Setting up users & authentication..."
        gem "devise"
        Bundler.with_clean_env do
          run "bundle install"
        end
        generate "devise:install"
        generate "devise User"
        generate "devise:views"
      end
    end
  end
end
