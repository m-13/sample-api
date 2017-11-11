class Api::V1::TaskController < ApplicationController
  before_action :authenticate_manager
  
  def index
    tasks = Task.all
    json_response(tasks.to_json)
  end

  def create
    task = Task.new(task_params)
    if task.save
      json_response('Created', :created)
  end

  def update
    task = Task.find_by(params[:id])
    if task.update(task_params)
      json_response('Updated')
    else 
      json_response('Cannot update', :unprocessable_entity)
    end
  end

  def delete
    task = Task.find_by(params[:id])
    if task.delete
      json_response('Deleted')
    else
      json_response('Cannot delete', :unprocessable_entity) 
  end

  private 

  def task_params
    params.permit(:name, :project_id, :intern_id)
  end
end
