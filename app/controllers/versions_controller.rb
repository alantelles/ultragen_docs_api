class VersionsController < ApplicationController
  def index
    @versions = Version.all
    @version = Version.new
  end

  def update
    chlog = params[:version][:changelog]
    name = params[:version][:name]
    gh_tag = params[:version][:github_tag]
    @version = Version.find(params[:id])
    @version.changelog = chlog
    @version.name = name
    @version.github_tag = gh_tag
    if @version.save
      flash.notice = "Version #{name} was successfully edited"
      redirect_to @version
    else
      @versions = Version.all
      render 'index'
    end
  end

  def destroy
    @version = Version.find(params[:id])
    msg = "Version #{@version.name} destroyed"
    @version.destroy
    flash.alert = msg
    redirect_to 'index'
  end

  def edit
    @version = Version.find(params[:id])
    
  end

  def show
    @version = Version.find(params[:id])
  end

  def create
    name = params[:version][:name]
    tag = params[:version][:github_tag]
    @version = Version.new(name: name, github_tag: tag)
    if @version.save
      redirect_to @version
    else
      @versions = Version.all
      render 'index'
    end
  end
end
