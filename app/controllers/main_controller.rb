class MainController < ApplicationController
  def index
    render "home"
  end
  def about
    @created_by = "Aleksey"
  end

  def hello
    redirect_to(action: "about")
  end
end
