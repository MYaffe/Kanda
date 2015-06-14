module ProblemsHelper

	def problem_params
  params.require(:problem).permit(:title, :body, :author)
end
end
