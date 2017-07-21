class TodoController < ApplicationController
   def index 
      @todos = Todo.all
   end 
   
   def show
      @todo = Todo.find_by_id(params[:id])
   end
   
   def new
   end
   
   def create
      todo = Todo.new
      todo.description = params['description']
      todo.pomodoro_estimate = params['pomodoro-estimate']
      todo.save 
      redirect_to "/todo/show/#{todo.id}"
   end
   
   def edit
      @todo = Todo.find_by_id(params[:id])
   end
   
   def update
      todo = Todo.find_by_id(params[:id])
      todo.description = params['description']
      todo.pomodoro_estimate = params['pomodoro-estimate']
      todo.save
      redirect_to "/todo/show/#{todo.id}"
   end
   
   def destroy
      todo = Todo.find_by_id(params[:id])
      todo.destroy
      redirect_to "/"
   end
end