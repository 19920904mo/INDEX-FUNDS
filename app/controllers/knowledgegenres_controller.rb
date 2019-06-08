class KnowledgegenresController < ApplicationController
  layout 'knowledgegenres'
  
  def index
    @data = Knowledgegenre.all
  end

  def add
    @knowledgegenre = Knowledgegenre.new
    if request.post? then
      @knowledgegenre = Knowledgegenre.create knowledgegenre_params
      redirect_to '/knowledgegenres'
    end  
  end

  def edit
    @knowledgegenre = Knowledgegenre.find params[:id]
    if request.patch? then
      @knowledgegenre.update knowledgegenre_params
      redirect_to 'knowledgegenres'
    end
  end
  
  private
  def knowledgegenre_params
    params.require(:knowledgegenre).permit(:name, :memo)
  end
end
