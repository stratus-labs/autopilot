require "autopilot/railtie"

module Autopilot
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :multiple_users, :super_admin, :home_page
    #
    # def initialize
    #   @mailer_sender = 'donotreply@example.com'
    # end
  end
end
