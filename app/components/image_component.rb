# frozen_string_literal: true

class ImageComponent < ViewComponent::Base
  def initialize(src:)
    @src = src
  end

end
