class DocEntriesController < ApplicationController
  def new
    @doc = DocEntry.new(language_id: 1)
    @langs = Language.all
    @versions = Version.all
    @topics = Topic.all
  end

  def index
    @docs = DocEntry.all
  end

  def show
    @doc = DocEntry.find(params[:id])
  end

  def edit
    @langs = Language.all
    @versions = Version.all
    @topics = Topic.all
    @doc = DocEntry.find(params[:id])
  end
  
  def update
    @doc = DocEntry.find(params[:id])
    data = params.require(:doc_entry).permit!
    if @doc.update(data)
      flash.notice = "Doc successfully edited"
      redirect_to @doc
    else
      @langs = Language.all
      @versions = Version.all
      @topics = Topic.all
      render edit_doc_entries_path(@doc)
    end 
    
  end

  def create
     
    data = params.require(:doc_entry).permit!
    @doc = DocEntry.new(data)
    if @doc.save
      flash.notice = "Doc successfully saved"
      redirect_to @doc
    else
      @langs = Language.all
      @versions = Version.all
      @topics = Topic.all
      render new_doc_entry_path(@doc)
    end 
  end

  def destroy
    @doc = DocEntry.find(params[:id])
    @doc.destroy
    redirect_to 'index'
  end
end