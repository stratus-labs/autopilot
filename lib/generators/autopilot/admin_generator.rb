module Autopilot
  module Generators
    class AdminGenerator < Rails::Generators::Base
      desc "This generator needs a description"

      def do_magic
        puts "Set up active admin"
      end
    end
  end
end
