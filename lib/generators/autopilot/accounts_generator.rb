module Autopilot
  module Generators
    class AccountsGenerator < Rails::Generators::Base
      desc "This generator needs a description"
      source_root File.expand_path("../../../templates", __FILE__)

      def run
        puts "Setting up multiple users per accounts"
        # add devise invitable
        gem 'devise_invitable', '~> 2.0.0'
        Bundler.with_clean_env do
          run "bundle install"
        end
        generate "devise_invitable:install"
        generate "devise_invitable User"
        template "views/accounts/users.html.erb", "app/views/accounts/users.html.erb"
        route "get '/accounts/users', to: 'accounts#users', as: :account_users"
        route "post 'account/send_user_invite' => 'accounts#send_user_invite', as: :send_user_invite"
        template "controllers/accounts_controller.rb", "app/controllers/accounts_controller.rb"
        template "controllers/application_controller.rb", "app/controllers/application_controller.rb", force: true

        generate "model Account"
        template "account.rb", "app/models/account.rb"
        template "user.rb", "app/models/user.rb", force: true

        generate "migration AddAccountToUsers accounts:references"
      end
    end
  end
end
