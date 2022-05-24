class WorksController < ApplicationController
    
 def create
    @resume = Resume.find(params[:resume_id])
    @work = @resume.works.create(work_params)
    redirect_to resume_path(@resume)
 end
 
 
  def destroy
    @resume = Resume.find(params[:resume_id])
    @work = @resmue.skills.find(params[:id])
    @work.destroy
    redirect_to resume_path(@resume)
  end
 
 
  private
    def work_params
      params.require(:work).permit(:position)
    end
    
end
