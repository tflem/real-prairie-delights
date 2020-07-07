# frozen_string_literal: true

module ApplicationHelper
  def title(*items)
    content_for :title do
      (items << 'Real Prairie Delights').join(' - ')
    end
    return content_for :title unless items.empty?
  end
end
