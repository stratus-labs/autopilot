# Generate yml: rails g autopilot:setup
# Run autopilot: rails g autopilot

# source_root File.expand_path('../templates', __dir__)
#
# # def magic
#   gem "devise"
#   generate "devise:install"
#   user_model_name = ask("What would you like the user model to be called? [user]")
#   user_model_name = "user" if user_model_name.blank?
#   generate "devise", user_model_name
#
#   generate "model Account"
#
#   if yes?("Do you want to have multiple users per account?")
#     line = "class Account < ActiveRecord::Base"
#     gsub_file 'app/models/account.rb', /(#{Regexp.escape(line)})/mi do |match|
#       "#{match}\n  has_many :users\n"
#     end
#     # puts "generate account with has_many users setup"
#
#     # add invitable stuff
#   else
#
#     line = "class Account < ActiveRecord::Base"
#     gsub_file 'app/models/account.rb', /(#{Regexp.escape(line)})/mi do |match|
#       "#{match}\n  has_one :user\n"
#     end
#     puts "generate account with has_one user"
#   end
#
#   if yes?("Do you want to have different user roles?")
#     puts "add user role stuff"
#   end
#
#   # later:
#   # oauth options
#   # onboarding pages
#
#   # billing
#   if yes?("Would you like to adding billing with Stripe?")
#     # install stripe shit?
#   end
#
#   stripe_billing_type = ask("How would you like to bill your customers? [recurring or one-time]")
#
#   if stripe_billing_type == "recurring"
#     stripe_billing_interval = ask("How frequently do you charge your customers? [monthly, annually, or both]")
#   end
#
#   # later: tiers based on X (options like # of users, or number of model records)
#
#   # marketing site
#   if yes?("Do you want to include a marketing site for logged out users? This includes home, pricing, and contact pages")
#     puts "add home page"
#   end
#
#   # admin
#   if yes?("Do you want to set up an admin area?")
#     puts "add activeadmin"
#
#     # if yes?("Do you want to add a feature flipper to your admin?")
#     # end
#   end
#
#   puts "Congrats! Your app is now generated. Time to focus on the real coding!"
# # end


# <%= form_for [current_account, User.new], url: { action: "send_user_invite" } do |f| %>
#   <%= f.label :email, "Email address" %>
#   <%= f.text_field :email, placeholder: "example@gmail.com", required: true %>
#   <%= f.submit "Send invite" %>
# <% end %>
