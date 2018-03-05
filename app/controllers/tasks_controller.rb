class TasksController < ApplicationController
  def complete
    t = Task.find_by(user_id: current_user.id, todo_id: params[:id])
    t.complete = true
    t.save
    redirect_to root_path
  end

  def uncomplete
    t = Task.find_by(user_id: current_user.id, todo_id: params[:id])
    t.complete = false
    t.save
    redirect_to root_path
  end
end
