class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dash

  def show
    render template: "pages/#{params[:page]}"
  end

  def dash
  end
end
