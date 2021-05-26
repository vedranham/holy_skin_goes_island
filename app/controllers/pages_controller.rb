class PagesController < ApplicationController
  def home
    @islands = Island.all
  end
end
