class SectionsController < ApplicationController
  def index
    @sections = Section.all.includes(:projects)
  end
end
