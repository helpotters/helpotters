class SectionsController < ApplicationController
  def index
    p "index"
    @sections = Section.all.includes(:projects)
  end
end
