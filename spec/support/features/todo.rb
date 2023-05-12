module Features
  def create_todo(title)
    fill_in 'Title', with: title
    click_button 'Submit'
  end


  def display_todo(title, options = {})
    completed_class = options[:completed] ? '.completed' : ''
    have_css ".todos li#{completed_class}", text: title
  end
end


