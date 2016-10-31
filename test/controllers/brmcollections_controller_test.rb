require 'test_helper'

class BrmcollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brmcollection = brmcollections(:one)
  end

  test "should get index" do
    get brmcollections_url
    assert_response :success
  end

  test "should get new" do
    get new_brmcollection_url
    assert_response :success
  end

  test "should create brmcollection" do
    assert_difference('Brmcollection.count') do
      post brmcollections_url, params: { brmcollection: { chopped: @brmcollection.chopped, collectedon: @brmcollection.collectedon, mqeisubmitted: @brmcollection.mqeisubmitted, weight: @brmcollection.weight } }
    end

    assert_redirected_to brmcollection_url(Brmcollection.last)
  end

  test "should show brmcollection" do
    get brmcollection_url(@brmcollection)
    assert_response :success
  end

  test "should get edit" do
    get edit_brmcollection_url(@brmcollection)
    assert_response :success
  end

  test "should update brmcollection" do
    patch brmcollection_url(@brmcollection), params: { brmcollection: { chopped: @brmcollection.chopped, collectedon: @brmcollection.collectedon, mqeisubmitted: @brmcollection.mqeisubmitted, weight: @brmcollection.weight } }
    assert_redirected_to brmcollection_url(@brmcollection)
  end

  test "should destroy brmcollection" do
    assert_difference('Brmcollection.count', -1) do
      delete brmcollection_url(@brmcollection)
    end

    assert_redirected_to brmcollections_url
  end
end
