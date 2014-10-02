module Api
	module V1

		class PortfolioController < ApplicationController
			# GET /portfolio.json
			def index
				@portfolios = Portfolio.all

				respond_to do |format|
					format.json { render json: @portfolios }
				end

			end

			# GET /portfolio/1.json
			def show
				@portfolio = Portfolio.find_by(id: params[:id])

				respond_to do |format|
					format.json { render json: @portfolio }
				end
			end

			def portfolio_params
				params.require(:portfolio).permit(:user_id, :name, :league_id)
			end
		end

	end
end