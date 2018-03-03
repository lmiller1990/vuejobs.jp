class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job
    else
      # error
    end
  end

  def show
    @job = Job.find_by(id: params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:name)
  end
end
