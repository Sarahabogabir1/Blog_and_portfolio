class WelcomeController < ApplicationController

  def index
    #newest go first and only 3 should be showing
    @posts = Post.all.limit(3).order("created_at desc")
  end

end
