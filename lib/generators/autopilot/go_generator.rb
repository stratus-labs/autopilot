module Autopilot
  module Generators
    class GoGenerator < Rails::Generators::Base
      desc "This generator needs a description"

      def run
        # TODO: if configuration doesn't exist, set defaults...
        include_accounts = Autopilot.configuration.multiple_users
        include_admin = Autopilot.configuration.super_admin

        gem "paranoia", "~> 2.2"

        generate "autopilot:users"
        generate "autopilot:routes"

        if include_accounts
          generate "autopilot:accounts"
        end

        if include_admin
          generate "autopilot:admin"
        end
      end
    end
  end
end

# if yes?("Do you want to have multiple users per account?")
