module Autopilot
  module Generators
    class AccountsGenerator < Rails::Generators::Base
      desc "This generator needs a description"
      # source_root File.expand_path("../../templatess", __FILE__)

      def run
        puts "Set up accounts"
        # generate "model Account"
        # add account reference to users
      end
    end
  end
end
