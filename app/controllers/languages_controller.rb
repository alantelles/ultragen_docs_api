class LanguagesController < ApplicationController
  def index
    @lang = Language.new
    @langs = Language.all
  end

  def create
    name = params[:language][:name]
    slug = params[:language][:slug]
    @lang = Language.new(name: name, slug: slug)
    if @lang.save
      redirect_to @lang
    else
      @langs = Language.all
      render 'index'
    end
  end 

  def show
    @lang = Language.find(params[:id])
  end

  def edit
    @lang = Language.find(params[:id])
  end

  def update
    @lang = Language.find(params[:id])
    @lang.name = params[:language][:name]
    @lang.slug = params[:language][:slug]
    if @lang.save
      redirect_to @lang
    else
      
      render 'edit'
    end
  end

  def destroy
    @lang = Language.find(params[:id])
    lang_name = @lang.name
    @lang.destroy
    if @lang.destroyed?
      flash.notice = "The language #{lang_name} was destroyed"
    else
      flash.alert = "The language #{lang_name} was not destroyed properly"
    end
    redirect_to languages_path
  end
end
