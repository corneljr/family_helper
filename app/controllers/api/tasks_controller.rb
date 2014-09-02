module Api
	class TasksController < ApplicationController
		skip_before_filter :verify_authenticity_token
		respond_to :json

		def index
			respond_with(Task.all.order('id DESC'))
		end

		def show
			respond_with(Task.find(params[:id]))
		end

		def create
			@task = Task.new(task_params)
			if @task.save
				respond_with @task
			end
		end

		def update
			@task = Task.find(params[:id])
			if @task.update(task_params)
				respond_with @task
			end
		end

		def destroy
			respond_with Task.destroy(params[:id])
		end

	private

		def task_params
			params.require(:task).permit(:title, :completed, :due_date, :priority)
		end
	end
end