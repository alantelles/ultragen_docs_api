require 'test_helper'

class DocEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get doc_entries_new_url
    assert_response :success
  end

  test "should get index" do
    get doc_entries_index_url
    assert_response :success
  end

  test "should get show" do
    get doc_entries_show_url
    assert_response :success
  end

  test "should get update" do
    get doc_entries_update_url
    assert_response :success
  end

  test "should get create" do
    get doc_entries_create_url
    assert_response :success
  end

  test "should get destroy" do
    get doc_entries_destroy_url
    assert_response :success
  end

end
