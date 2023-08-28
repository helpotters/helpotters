class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    @content = markdown.render(@project.article || "")
  end
end
