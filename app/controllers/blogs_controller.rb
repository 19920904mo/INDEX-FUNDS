class BlogsController < ApplicationController

  
  def index
    page_size = 5
    @page_num = 0
    if params[:page] != nil then
      @page_num = params[:page].to_i
    end
    @data = Knowledgepost.all.order('created_at desc')
      .offset(page_size * @page_num)
      .limit(page_size)
    @knowledgeconfig = Knowledgeconfig.find 1
  end

  def genre
    page_size = 5
    @page_num = 0
    if params[:page] != nil then
      @page_num = params[:page].to_i
    end
    @genre = Knowledgegenre.find params[:id]
    @data = Knowledgepost.where('knowledgegenre_id = ?', params[:id])
      .order('created_at desc').offset(page_size * @page_num)
      .limit(page_size)
    @knowledgeconfig = Knowledgeconfig.find 1
  end

  def show
    @knowledgepost = Knowledgepost.find params[:id]
    @knowledgeconfig = Knowledgeconfig.find 1
  end
end
