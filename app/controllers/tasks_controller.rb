class TasksController < ApplicationController
 
  def index
    @tasks = Task.all
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(title: params[:title], start: params[:start], end: params[:end], allday: params[:allday], content: params[:content])
    @task.save
    redirect_to("/tasks/index")
  end
 
  def show
    @task = Task.find_by(id: params[:id])
  end
 
  def edit
    @task = Task.find_by(id: params[:id]) 
  end
 
  def update
    @task = Task.find_by(id: params[:id]) 
    @task.title = params[:title]
    @task.start = params[:start]
    @task.end = params[:end]
    @task.allday = params[:allday]
    @task.content = params[:content]
    if @task.save
     redirect_to("/tasks/index")
    else
     render("tasks/edit")
    end
  end
 
  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    redirect_to("/tasks/index")
  end

end
