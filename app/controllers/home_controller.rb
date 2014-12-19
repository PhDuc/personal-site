class HomeController < ApplicationController
  def index
  end

  def about_me
    @page_title = "DP| About Me"
  end

  def contacts
    @page_title = "DP| Contacts"
  end

  def projects
    @page_title = "DP| Projects"
  end
end
