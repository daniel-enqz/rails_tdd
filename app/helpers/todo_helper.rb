module TodoHelper
  def todo_item(todo)
    content_tag :li, todo.title, class: (todo.completed? ? 'completed' : '')
  end
end
