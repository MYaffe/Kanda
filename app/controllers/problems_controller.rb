class ProblemsController < ApplicationController
include ProblemsHelper
def index
	@problems = Problem.all
end

def show
	@problem = Problem.find(params[:id])
	@solution = Solution.new
  	@solutions = @problem.solutions
  	gon.solutions = Problem.first.body
end

def new
	@problem = Problem.new
end

def create
@problem = Problem.new(problem_params)
@problem.save
redirect_to problem_path(@problem)
end

def destroy
	@problem = Problem.find(params[:id])
redirect_to problems_path(@problem)
end

def edit 
@problem = Problem.find(params[:id])
	end

	def update
  @problem = Problem.find(params[:id])
  @problem.update(problem_params)

  redirect_to problem_path(@problem)
end

end