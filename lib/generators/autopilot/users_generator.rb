module Autopilot
  module Generators
    class UsersGenerator < Rails::Generators::Base
      desc "This generator needs a description"

      def do_magic
        puts "Setting up users & authentication..."
        gem "devise"
        Bundler.with_clean_env do
          run "bundle install"
        end
        generate "devise:install"
        generate "devise User"
        generate "devise:views"
        generate "migration AddDeletedAtToUsers deleted_at:datetime:index"
      end
    end
  end
end
