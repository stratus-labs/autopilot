module Autopilot
  module Generators
    class AccountsGenerator < Rails::Generators::Base
      desc "This generator needs a description"
      source_root File.expand_path("../../../templates", __FILE__)

      def do_magic
        puts "Setting up multiple users per accounts"

        gem 'devise_invitable', '~> 2.0.0'
        Bundler.with_clean_env do
          run "bundle install"
        end
        generate "devise_invitable:install"
        generate "devise_invitable User"

        generate "model Account"
        template "account.rb", "app/models/account.rb", force: true
        template "user.rb", "app/models/user.rb", force: true

        copy_file "controllers/accounts_controller.rb", "app/controllers/accounts_controller.rb", force: true
        copy_file "controllers/application_controller.rb", "app/controllers/application_controller.rb", force: true

        route "get 'account/users', to: 'accounts#users', as: :account_users"
        route "post 'account/send_user_invite' => 'accounts#send_user_invite', as: :send_user_invite"
        copy_file "views/accounts/users.html.erb", "app/views/accounts/users.html.erb"

        generate "migration AddAccountToUsers account:references"
        generate "migration AddDeletedAtToAccounts deleted_at:datetime:index"
      end
    end
  end
end
