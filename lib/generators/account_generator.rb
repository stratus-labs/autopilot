class AccountGenerator < Rails::Generators::Base
  desc "This generator creates an account model"

  def create_account
    if yes?("Would you like to install Devise?")
      gem "devise"
      generate "devise:install"
      model_name = ask("What would you like the user model to be called? [user]")
      model_name = "user" if model_name.blank?
      generate "devise", model_name
    end
  end
end
