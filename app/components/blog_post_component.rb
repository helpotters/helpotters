# frozen_string_literal: true

class BlogPostComponent < ViewComponent::Base
  def initialize(src:)
    @src = src
  end

end
