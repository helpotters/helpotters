# frozen_string_literal: true

class BlogSectionComponent < ViewComponent::Base
  def initialize(title:)
    @title = title
  end
end
