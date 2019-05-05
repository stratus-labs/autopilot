module Autopilot
  module Generators
    class AccountsGenerator < Rails::Generators::Base
      desc "This generator needs a description"
      source_root File.expand_path("../../../templates", __FILE__)
      puts "Source: #{source_root}"

      def run
        puts "Setting up multiple users per accounts"
        # add devise invitable
        # generate "model Account"
        template "account.rb", "app/models/account.rb"
        template "user.rb", "app/models/user.rb", force: true


        # add account reference to users
      end
    end
  end
end
