# frozen_string_literal: true

class ListItemLinkComponent < ViewComponent::Base
  renders_one :icon

  def initialize(href:, title:)
    @href = href
    @title = title
  end
end
