Gem::Specification.new do |spec|
  spec.name        = "autopilot-rails"
  spec.version     = "0.1.0"
  spec.authors     = ["Dylan Feltus"]
  spec.email       = ["contact@dylanfeltus.com"]
  spec.homepage    = "https://github.com/stratuslabs/autopilot"
  spec.summary     = "Generate your next SaaS app using Rails"
  spec.description = "With Autopilot for Rails you can generate a starting point for your next SaaS project. Add accounts with multiple users, Stripe billing, permissions, onboarding flows, and more."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.2", ">= 5.2.2.1"
end
