class Api::V1::ProjectController < ApplicationController
  def index
    projects = Project.all
    json_response(projects.to_json)
  end

  def create
    project = Project.new(project_params)
    if project.save
      json_response('Created', :created)
  end

  def update
    project = Project.find_by(params[:id])
    if project.update(project_params)
      json_response('Updated')
    else 
      json_response('Cannot update', :unprocessable_entity)
    end
  end

  def delete
    project = Project.find_by(params[:id])
    if project.delete
      json_response('Deleted')
    else
      json_response('Cannot delete', :unprocessable_entity) 
  end

  private 

  def project_params
    params.permit(:name, :manager_id)
  end
end
