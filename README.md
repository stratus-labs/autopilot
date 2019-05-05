# Autopilot Rails
Ship your next SaaS product in hours, not days or weeks.

## Install

- rails new example --database=postgresql
- ~~Add config~~
- gem 'autopilot', git: 'https://github.com/stratuslabs/autopilot.git'
- `bundle install`
- Set up database

### For development
```
gem 'autopilot', path: '~/Projects/autopilot/'
```

## Usage

To generate a project run `rails generate autopilot:go` to get started. The generator will ask a few questions to customize the output. You can also add a config to `app/initializers/autopilot.rb` using the options described below.

⚠️ The generators in this gem will cause havoc on any existing project. This is designed for **BRAND NEW** projects only.

| Option | Description |
| --- | --- |
| multiple_users | This will add an Account model, some account related helpers, and [Devise Invitable](https://github.com/scambra/devise_invitable). You will also get a `account/users` page with a list of users and the invite form. |
| super_admin | This will install ActiveAdmin with a few extra features like "Log in as user" and an account growth chart. |
| home_page | This will add a blank html page and set it as your unauthenticated root path. When set to false your log in page will be the root. |
| user_roles | _Coming soon_ |
| flipper | _Coming soon_ |
| stripe_billing | _Coming soon_ |
| annual_billing | _Coming soon_ |
| free_trial_without_cc | _Coming soon_ |
| free_trial_with_cc | _Coming soon_ |
| theme | _Coming soon_ |

### Default behavior
TODO: What happens if all config options are set to false

## Config example

```
Autopilot.configure do |config|
  config.multiple_users = true
  config.super_admin = true
  config.home_page = true
end
```
