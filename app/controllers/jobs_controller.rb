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

  def edit
    @job = Job.find_by(id: params[:id])
  end

  def update
    @job = Job.find_by(id: params[:id])
    if @job.update_attributes(job_params)
      redirect_to @job
    else
      puts @job.errors.full_messages
      puts 'error'
      # error
    end
  end

  private

  def job_params
    params.require(:job).permit(:name, :job_type, :description, :company_description)
  end
end
