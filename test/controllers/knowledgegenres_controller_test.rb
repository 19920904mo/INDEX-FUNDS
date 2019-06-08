require 'test_helper'

class KnowledgegenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get knowledgegenres_index_url
    assert_response :success
  end

  test "should get add" do
    get knowledgegenres_add_url
    assert_response :success
  end

  test "should get edit" do
    get knowledgegenres_edit_url
    assert_response :success
  end

end
