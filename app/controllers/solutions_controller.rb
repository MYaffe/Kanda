class SolutionsController < ApplicationController

def create
	@solution = Solution.new(solution_params)
	@solution.problem_id = params[:problem_id]

	@solution.save

	redirect_to problem_path(@solution.problem)
end

def solution_params
	params.require(:solution).permit(:author, :body, :category)
end

end