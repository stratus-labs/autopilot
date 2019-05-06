Gem::Specification.new do |spec|
  spec.name        = "autopilot-rails"
  spec.version     = "0.1.0"
  spec.authors     = ["Dylan Feltus"]
  spec.email       = ["contact@dylanfeltus.com"]
  spec.homepage    = "https://stratuslabs.io/autopilot"
  spec.summary     = "Generate your next SaaS app using Rails"
  spec.description = "With Autopilot for Rails you can generate a starting point for your next SaaS project. Add accounts with multiple users, Stripe billing, permissions, onboarding flows, and more."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://git.fury.io/dylanfeltus/autopilot_rails.git"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.2", ">= 5.2.2.1"
end
