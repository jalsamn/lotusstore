module ApplicationHelper
  def line_item_count order
    order.line_items.count
  end
end
