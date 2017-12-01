class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.ruby
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end
def new
 @portfolio_item = Portfolio.new
 3.times{@portfolio_item.technologies.build}
end
def create
 @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body, technologies_attributes:[:name]))
 if @portfolio_item.save
 	redirect_to portfolios_path(notice:"was succesfully edited" )
 else
 	render 'new'
 end
end
def edit
 @portfolio_item = Portfolio.find(params[:id])
 
end
def update
  @portfolio_item = Portfolio.find(params[:id])
 if @portfolio_item.update(params.require(:portfolio).permit(:title,:subtitle, :body))
 	redirect_to portfolios_path
 else
 	render 'edit'
 end
end

def show
 @portfolio_item = Portfolio.find(params[:id])
end
	
def destroy
	@portfolio_item = Portfolio.find(params[:id])
	@portfolio.destroy
	redirect_to portfolios_path
end
 
end
