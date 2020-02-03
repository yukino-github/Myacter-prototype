# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get root_path
    assert_response :success
    assert_select 'title', 'My Activity Meter'
  end

  test 'should get help' do
    get help_path
    assert_response :success
    assert_select 'title', 'Help | My Activity Meter'
  end

  test 'should get about' do
    get about_path
    assert_response :success
    assert_select 'title', 'About | My Activity Meter'
  end

  test 'should get contact' do
    get contact_path
    assert_response :success
    assert_select 'title', 'Contact | My Activity Meter'
  end
end
