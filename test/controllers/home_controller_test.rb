require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    
    assert_select 'title', 'My Notes';
    assert_select 'h1', 'My Notes';
    assert_select 'p1', 'Welcome to my notes site!';
    
    assert_response :success
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    
    assert_template layout: 'application'
    
    assert_select 'title', 'My Notes';
    assert_select 'h1', 'Contact Us';
    assert_select 'p1', 'Complete the following form to get in touch with us.';
  end
  
  test "should post request contact but no email" do
    post :request_contact
    
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end
  
  test "should post request contact" do
    post :request_contact,
      name: "Jacek", email: "jacek@webtestme.com", 
      telephone: "12345678910", message: "testing"
    
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
