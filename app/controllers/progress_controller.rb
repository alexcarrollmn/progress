class ProgressController < ApplicationController
  def index
    @img = ImageHandle.new('/public/images/capture')
    @img.most_recent
  end

  def short
  end

  def graph
  end

  def day
  end
end
