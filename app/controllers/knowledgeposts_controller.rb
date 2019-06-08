class KnowledgepostsController < ApplicationController
  layout 'knowledgeposts'
  
  def index
    @data = Knowledgepost.all.order('created_at desc')
  end

  def add
    @knowledgepost = Knowledgepost.new
    @genres = Knowledgepost.all
    if request.post? then
      @knowledgepost = Knowledgepost.create knowledgeposts_params
      redirect_to '/knowledgeposts'
    end
  end

  def edit
    @knowledgepost = Knowledgepost.find params[:id]
    @genres = Knowledgepost.all
    if request.patch? then
      @knowledgepost.update knowledgeposts_params
      redirect_to '/knowledgeposts'
    end
  end

  def delete
    @knowledgepost = Knowledgepost.find params[:id]
    if request.post? then
      @knowledgepost.destroy
      redirect_to '/knowledgeposts'
    end
  end
  
  private
  def knowledgeposts_params
    params.require(:knowledgepost).permit(:title, :read, :content, :knowledgegenre_id)
  end
end
