module Autopilot
  module Generators
    class MagicGenerator < Rails::Generators::Base
      desc "This generator needs a description"

      def run
        include_accounts = Autopilot.configuration.multiple_users
        include_admin = Autopilot.configuration.super_admin

        # generate "autopilot:users"
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
