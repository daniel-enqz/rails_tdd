module Features
  def create_todo(title)
    fill_in 'Title', with: title
    click_button 'Submit'
  end

  def display_completed_todo(title)
    have_css '.todos li.completed', text: title
  end
end
    

