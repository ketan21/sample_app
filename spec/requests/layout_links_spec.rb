require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
      get '/'
      response.should have_selector('title', :content =>"Home")
  end
  
  it ' should have a contact page at "/contact"' do
      get '/contact'
      response.should have_selector('title', :content => "Contact")
  end
  
  it 'should have about page at "/about"' do
      get '/about'
      response.should have_selector('title', :content => "About")
  end
  
  it 'should have Help page at "/help"' do
      get '/help'
      response.should have_selector('title', :content => "Help")
  end
  
  it 'should have a signup page at "/signup"' do
    get '/signup'
    response.should have_selector('title', :content => "Sign Up")    
  end
  
  
  it 'should have right links on the layout' do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Sign in"
    response.should have_selector('title', :content => "Sign Up")
    response.should have_selector('a[href="/"]>img')
  end
end
