module Autopilot
  module Generators
    class AdminGenerator < Rails::Generators::Base
      desc "This generator needs a description"

      def do_magic
        puts "Set up active admin"

        gem "activeadmin"
        Bundler.with_clean_env do
          run "bundle install"
        end
        generate "active_admin:install"
        run "db:migrate"
        run "db:seed"

        puts "Admin account generated:"
        puts "Email: admin@example.com"
        puts "Password: password"
        puts "Access your admin account at /admin"
      end
    end
  end
end
