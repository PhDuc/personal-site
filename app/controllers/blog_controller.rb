class BlogController < ApplicationController
  before_action :set_page_title
  def index
  end

  def review
  end

  private
  def set_page_title
    @page_title = "DP| Blog"
  end

end
