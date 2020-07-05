# frozen_string_literal: true

module ApplicationHelper
  def title(*items)
    unless items.empty?
      content_for :title do
        (items << "Real Prairie Delights").join(" - ")
      end      
    end
  end
end
