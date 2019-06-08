class KnowledgeconfigsController < ApplicationController
 layouts 'knowledgeconfigs'
  
  def index
    @knowledgeconfig = Knowledgeconfig.find 1
  end

  def edit
    @knowledgeconfig = Knowledgeconfig.find 1
    if request.patch? then
      @knowledgeconfig.update knowledgeconfig_params
      redirect_to '/knowledgeconfigs'
    end
  end

  private
  def knowledgeconfig_params
    params.require(:knowledgeconfig).permit(:title, :subtitle, :stylename)
  end
end