# frozen_string_literal: true

class HomeController < ApplicationController
  def resume
    @sections = Section.all.includes(:projects)
  end
end
