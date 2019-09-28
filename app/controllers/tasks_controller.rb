class TasksController < ApplicationController
  
  priority_low = 0
  
  def index 
    @tasks = Task.all
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end
  
  def detail
    @task = Task.find(params[:id])
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
  
  def sort
    Task.all.order('priority', params[:priority] )
    
  end
  
  private
  def task_params
    params.require(:task).permit(:title, :explanation, :start_work, :end_work_prospect, :end_work, :priority, :status)
  end
end
