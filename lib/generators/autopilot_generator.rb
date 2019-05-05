class AutopilotGenerator < Rails::Generators::Base
  desc "This generator needs a description"

  def setup_project
    include_accounts = Autopilot.configuration.multiple_users
    include_admin = Autopilot.configuration.super_admin
    include_home_page = Autopilot.configuration.home_page

    # Devise
    puts "Set up devise"
    gem "devise"
    Bundler.with_clean_env do
      run "bundle install"
    end
    generate "devise:install"
    generate "devise User"
    generate "devise:views"

    if include_home_page
      puts "Set up marketing home page"
    end

    if include_accounts
      puts "Set up accounts"
      generate "model Account"
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
