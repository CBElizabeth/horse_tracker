class HorsesController < ApplicationController
	before_filter :authorize
	before_action :set_user, except: [:show]

	def index
		@horses = @user.horses.all
	end

	def new
		@horse = Horse.new
	end

	def create
		@horse = @user.horses.new(horse_params)
		if @horse.save
			redirect_to user_horses_path
		else
			redirect_to new_user_horse_path
		end
	end

	def show
		@horse = Horse.find_by id: params[:id]
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def set_user
		@user = User.find(params[:user_id])
	end

	def horse_params
		params.require(:horse).permit(:name, :sex, :breed_count, :death_count, :tier, :level)
	end
	
end