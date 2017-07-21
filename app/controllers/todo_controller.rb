class TodoController < ApplicationController
   def index 
   end 
   
   def show
      @todo = Todo.find_by_id(params[:id])
   end
   
   def new
   end
   
   def create
      todo = Todo.new
      todo.description = params['description']
      todo.pomodoro_estimate = params['pomodoro_estimate']
      todo.save 
      redirect_to '/todo/show#{todo.id}'
   end
end