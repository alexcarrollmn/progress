class ProgressController < ApplicationController

  def index
    @img = ImageHandle.new('public/images/capture/', 'jpeg')
    @foo = @img.multi_offset(2,4)
    @bar = @img.listall
  end

  def short
  end

  def graph
  end

  def day
  end
end
