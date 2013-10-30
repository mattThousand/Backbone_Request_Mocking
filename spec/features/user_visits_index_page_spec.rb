require 'spec_helper'


feature 'user visits index page' do

  it 'user sees page header' do
    visit root_path
    expect(page).to have_content("Awesome page title")
  end

end
