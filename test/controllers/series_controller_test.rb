require 'test_helper'

class SeriesControllerTest < ActionController::TestCase
  setup do
    @series = series(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:series)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create series" do
    assert_difference('Series.count') do
      post :create, series: { genre_id: @series.genre_id, title: @series.title }
    end

    assert_redirected_to series_path(assigns(:series))
  end

  test "should show series" do
    get :show, id: @series
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @series
    assert_response :success
  end

  test "should update series" do
    patch :update, id: @series, series: { genre_id: @series.genre_id, title: @series.title }
    assert_redirected_to series_path(assigns(:series))
  end

  test "should destroy series" do
    assert_difference('Series.count', -1) do
      delete :destroy, id: @series
    end

    assert_redirected_to series_index_path
  end
end
