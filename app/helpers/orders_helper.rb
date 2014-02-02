module OrdersHelper
  def sortable(column)
    #direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    #css_class = column == sort_column ? "arrow_#{direction_column}" : nil
    #no need to direct use of params as sort_coumn and direction_column are now helper methods
    direction = ((column == sort_column) && (direction_column == "asc")) ? "desc" : "asc"
    link_to column, sort: column, direction: direction, page: nil
  end
end
