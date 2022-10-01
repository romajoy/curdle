require "test_helper"

class CheesesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cheese = cheeses(:one)
  end

  test "should get index" do
    get cheeses_url, as: :json
    assert_response :success
  end

  test "should create cheese" do
    assert_difference("Cheese.count") do
      post cheeses_url, params: { cheese: { name: @cheese.name } }, as: :json
    end

    assert_response :created
  end

  test "should show cheese" do
    get cheese_url(@cheese), as: :json
    assert_response :success
  end

  test "should update cheese" do
    patch cheese_url(@cheese), params: { cheese: { name: @cheese.name } }, as: :json
    assert_response :success
  end

  test "should destroy cheese" do
    assert_difference("Cheese.count", -1) do
      delete cheese_url(@cheese), as: :json
    end

    assert_response :no_content
  end
end
