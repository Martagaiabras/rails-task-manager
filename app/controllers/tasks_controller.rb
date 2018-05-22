class TasksController < ApplicationController
  before_action :fetch_task, except: [:index, :new, :create]
  
  def index
    @tasks = Task.all 
  end

  def show
      #@task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create(params_task)
    redirect_to task_path(task)
  end

  def edit
    #@task = Task.find(params[:id])
  end

  def update
    #@task = Task.find(params[:id])
    @task.update(params_task)
    redirect_to task_path(@task)
  end

  def destroy
   #@task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def fetch_task
    @task = Task.find(params[:id])
  end
  
  def params_task
    params.require(:task).permit(:title, :details,:completed)
  end
end 