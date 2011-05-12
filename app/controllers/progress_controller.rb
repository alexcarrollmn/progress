class ProgressController < ApplicationController

  def index
    @img = ImageHandle.new('public/images/capture/', 'jpeg')
    @img.recent_offset(2)
    @img.listall
    @foo = @img.multi_offset(2,4)
  end

  def short
  end

  def graph
  end

  def day
  end
end
