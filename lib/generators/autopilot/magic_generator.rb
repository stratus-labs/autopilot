module Autopilot
  module Generators
    class MagicGenerator < Rails::Generators::Base
      desc "This generator needs a description"
      source_root File.expand_path("../../templates", __FILE__)

      def run
        include_accounts = Autopilot.configuration.multiple_users
        include_admin = Autopilot.configuration.super_admin
        include_home_page = Autopilot.configuration.home_page

        # generate "autopilot:users"

        # add dash and routes:
        copy_file "../../templates/pages_controller.rb", "app/controllers/pages_controller.rb"
        copy_file "../../templates/views/pages/dash.html.erb", "app/views/pages/dash.html.erb"

        # Routes:
        route "end"
        route "root 'pages#dash', as: :authenticated_root"
        route "authenticated :user do"
        route "get '/dash', to: 'pages#dash', as: :dash"

        if include_home_page
          puts "Set up marketing home page"

          copy_file "../../templates/views/pages/home.html.erb", "app/views/pages/home.html.erb"
          route "root to: 'pages#home'"
        else
          route "root to: 'devise/sessions#new'"
        end

        if include_accounts
          puts "Set up accounts"
          generate "model Account"
          # add account reference to users
        end

        if include_admin
          puts "Set up active admin"
        end



        # user_model_name = ask("What would you like the user model to be called? [user]")
        # user_model_name = "user" if user_model_name.blank?
        # generate "devise", user_model_name
        #
        # generate "model Account"
        #
        # if yes?("Do you want to have multiple users per account?")
        #   line = "class Account < ActiveRecord::Base"
        #   gsub_file 'app/models/account.rb', /(#{Regexp.escape(line)})/mi do |match|
        #     "#{match}\n  has_many :users\n"
        #   end
        #   # puts "generate account with has_many users setup"
        #
        #   # add invitable stuff
        # else
        #
        #   line = "class Account < ActiveRecord::Base"
        #   gsub_file 'app/models/account.rb', /(#{Regexp.escape(line)})/mi do |match|
        #     "#{match}\n  has_one :user\n"
        #   end
        #   puts "generate account with has_one user"
        # end
      end
    end
  end
end
