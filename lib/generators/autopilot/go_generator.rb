module Autopilot
  module Generators
    class GoGenerator < Rails::Generators::Base
      desc "This generator needs a description"

      def do_magic

        if yes?("Do you want to have multiple users per account? [y|n]")
          include_accounts = true
        else
          include_accounts = false
        end

        if yes?("Do you want to include ActiveAdmin? [y|n]")
          include_admin = true
        else
          include_admin = false
        end

        if yes?("Do you want to include a home page? [y|n]")
          include_home = true
        else
          include_home = false
        end

        gem "paranoia", "~> 2.2"

        generate "autopilot:users"
        generate "autopilot:routes #{include_home ? '--home' : nil}"

        if include_accounts
          generate "autopilot:accounts"
        end

        if include_admin
          generate "autopilot:admin"
        end

        rake "db:migrate"
        run "rails s"
      end
    end
  end
end
