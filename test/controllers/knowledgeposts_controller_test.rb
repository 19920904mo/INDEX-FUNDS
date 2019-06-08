require 'test_helper'

class KnowledgepostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get knowledgeposts_index_url
    assert_response :success
  end

  test "should get add" do
    get knowledgeposts_add_url
    assert_response :success
  end

  test "should get edit" do
    get knowledgeposts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get knowledgeposts_delete_url
    assert_response :success
  end

end
