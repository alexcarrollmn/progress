class ProgressController < ApplicationController

  def index
    @img = ImageHandle.new('public/images/capture/', 'jpeg')
    @foo = @img.multi_offset(1,2)
  end

  def short
  end

  def graph
  end

  def day
  end
end
