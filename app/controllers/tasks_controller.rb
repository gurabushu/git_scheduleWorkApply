class TasksController < ApplicationController

    def index
        @tasks = Task.all
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to tasks_path
            flash[:notice] = "タスク登録完了"
        else
            render :new
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path, notice: "タスクを削除しました。"
    end

    private

    def task_params
        params.require(:task).permit(:title, :description, :status, :due_date)
    end
    
end