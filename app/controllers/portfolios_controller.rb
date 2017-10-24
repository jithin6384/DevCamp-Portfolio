class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end
def new
 @portfolio = Portfolio.new
end
def create
 @portfolio = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))
 if @portfolio.save
 	redirect_to portfolios_path
 else
 	render 'new'
 end
end

def show
 #@portfolio = Portfolio.find(params(:id))
end
	

 
end
