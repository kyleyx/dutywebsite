class ProblemsController < ApplicationController
	def index
		@problems= Problem.all 
	end
	def new
		@problem= Problem.new
	end
	def create
		problem= Problem.new(problem_params)
		problem.date=Time.now
		problem.status=false
		#problem.author=User.select("username")(User.find params[:id])
  		if problem.save # ummm
    		redirect_to problems_path 
  		else
    		redirect_to new_problem_path
  		end
	end
	def show
		@problem=Problem.find params[:id]
	end
	def edit
		@problem=Problem.find params[:id]
	end
	def update
		@problem=Problem.find params[:id]
		if @problem.update(problem_params)
			redirect_to problems_path
		else
			redirect_to edit_problem_path
		end
	end
	def destroy
		@problem=Problem.find params[:id]
		@problem.destroy
		redirect_to problems_path
	end
	private def problem_params
		params.require(:problem).permit(:computer_num,:detail,:status)
	end
end