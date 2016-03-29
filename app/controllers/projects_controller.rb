class ProjectsController < ApplicationController
	before_filter :authorize

	def new
		@project = Project.new
		@customers = Customer.all
	end

	def create
		puts params
		@project = Project.new(project_params)
		if @project.save
			redirect_to user_path(current_user.id)
		else
			redirect_to user_path(current_user.id)
		end
	end

	private

	def project_params
		params.require(:project).permit(:name)
	end
	
end