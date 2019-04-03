class InitializerGenerator < Rails::Generators::Base
  desc "This generator creates an initializer file at config/initializers"

  def create_initializer_file
    create_file "config/initializers/initializer.rb", "# Testing!"
  end
end
