class DocEntriesController < ApplicationController
  def new
    @doc = DocEntry.new(language_id: 1)
    @langs = Language.all
  end

  def index
  end

  def show
  end

  def update
  end

  def create
  end

  def destroy
  end
end
