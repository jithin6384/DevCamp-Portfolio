class PagesController < ApplicationController
  def home
  	@s = Skill.all
  end

  def about
  end

  def contact
  end
end
