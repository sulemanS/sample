require 'spec_helper'

describe "Static Pages" do

	describe "Home page" do

	it "should have the h1 'Sample app'" do
      visit '/static_pages/home'
      page.should have_selector( 'h1', :text => 'Sample app' )
    end

     it "should have the title 'Home'" do
     	visit '/static_pages/home'
     	page.should have_selector( 'title', 
   								:text => "Ruby on Rails Tutorial | Home" ) 
		end
	end

  	describe "Help Page" do

  		it "should have the h1 'we like to help you'" do
  		visit '/static_pages/help'
  		page.should have_selector( 'h1', :text => 'we like to help you' )
		end

		it "should have title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector( 'title', 
									:text => "Ruby on Rails Tutorial | Help" )
		end
	end

	describe "About Page" do
		it "should have the h1 'pakistan'" do
			visit "/static_pages/about"
			page.should have_selector( 'h1', :text => 'pakistan' )
		end

		it "should have the title'About'" do
			visit "/static_pages/about"
			page.should have_selector( 'title', 
								:text => "Ruby on Rails Tutorial | About" )
		end
	end


end
