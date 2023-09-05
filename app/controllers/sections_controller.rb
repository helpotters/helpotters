class SectionsController < ApplicationController
  def index
    @sections = Section
      .joins(:projects)
      .select("sections.*, COUNT(projects.id) as project_count")
      .group("sections.id")
      .order("project_count DESC")
  end
end
