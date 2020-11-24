class TopicsController < ApplicationController
  def index
    @topic = Topic.new
    @topics = Topic.all
  end

  def create
    slug = params[:topic][:slug]
    metadata = params[:topic][:metadata]
    @topic = Topic.new(slug: slug, metadata: metadata)
    if @topic.save
      redirect_to @topic
    else
      @topics = Topic.all
      render 'index'
    end
  end
end
