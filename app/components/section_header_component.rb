# frozen_string_literal: true

class SectionHeaderComponent < ViewComponent::Base
  def initialize(count:, title:)
    @count = count
    @title = title
  end
end
