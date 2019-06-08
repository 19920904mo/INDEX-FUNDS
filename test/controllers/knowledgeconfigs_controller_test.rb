require 'test_helper'

class KnowledgeconfigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get knowledgeconfigs_index_url
    assert_response :success
  end

  test "should get edit" do
    get knowledgeconfigs_edit_url
    assert_response :success
  end

end
