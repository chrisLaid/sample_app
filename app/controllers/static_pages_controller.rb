class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  	  @micropost = current_user.microposts.build 
  	  @feed_items = current_user.feed.paginate(page: params[:page])
      @mbtis = current_user.mbtis.last
  	end
  end

  def mbtidescription
    @mbtis = current_user.mbtis.last
  end

  def mbtiexam
    @mbti = current_user.mbtis.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
  
end
