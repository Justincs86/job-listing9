class Admin::ResumesController < ApplicationController
  before_action :require_is_admin
  layout "admin"

  def index
    @job = Job.find(params[:job_id])
    @resumes = @job.resumes.order("Created_at DESC")
  end


end
