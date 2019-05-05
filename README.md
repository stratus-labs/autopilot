# Autopilot Rails

_⚠️ This project is still a WIP. It currently works with a limited set of features._

Ship your next SaaS product in hours, not days or weeks.

This gem will help you to scaffold your next project. Currently it will add:
- Users with authentication via Devise
- Accounts with devise_invitable
- Super admin area with ActiveAdmin
- Default routes and pages

More features coming soon:
- User roles & permissions
- Stripe billing with optional annual plans
- Feature flipper for super admins
- UI themes

## Install

To install Autopilot, simply add the gem to your Gemfile:
`gem 'autopilot', git: 'https://github.com/stratuslabs/autopilot.git'`

## Usage

To generate a project run `rails generate autopilot:go` to get started. The generator will ask a few questions to customize the output.

| Option | Description |
| --- | --- |
| Do you want to have multiple users per account? | This will add an Account model, some account related helpers, and [Devise Invitable](https://github.com/scambra/devise_invitable). You will also get a `account/users` page with a list of users and the invite form. |
| Do you want to include ActiveAdmin? | This will install ActiveAdmin with a few extra features like "Log in as user" and an account growth chart. |
| Do you want to include a home page? | This will add a blank html page and set it as your unauthenticated root path. When set to false your log in page will be the root. |

## Starting from scratch

Here are some instructions to help you start a Rails app from scratch:

- rails new example --database=postgresql
- ~~Add config~~
- gem 'autopilot', git: 'https://github.com/stratuslabs/autopilot.git'
- `bundle install`
- Set up database
