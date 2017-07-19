class TodoController < ApplicationController
   def index 
   end 
   
   def show
      todo_id = params[:id]
      
      if todo_id == '1'
         @todo_description = "Teach the Students"
         @todo_pomodoro_estimate = 4
         
      elsif todo_id == '2'
         @todo_description = "Walk the Students to Lunch"
         @todo_pomodoro_estimate = 3
      
      elsif todo_id == '3'
         @todo_description = "Make sure the Students have Fun!"
         @todo_pomodoro_estimate = 0
      end
   end
end