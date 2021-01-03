require 'test_helper'

class NewsSitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_site = news_sites(:one)
  end

  test "should get index" do
    get news_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_news_site_url
    assert_response :success
  end

  test "should create news_site" do
    assert_difference('NewsSite.count') do
      post news_sites_url, params: { news_site: { rss_url: @news_site.rss_url, title: @news_site.title } }
    end

    assert_redirected_to news_site_url(NewsSite.last)
  end

  test "should show news_site" do
    get news_site_url(@news_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_site_url(@news_site)
    assert_response :success
  end

  test "should update news_site" do
    patch news_site_url(@news_site), params: { news_site: { rss_url: @news_site.rss_url, title: @news_site.title } }
    assert_redirected_to news_site_url(@news_site)
  end

  test "should destroy news_site" do
    assert_difference('NewsSite.count', -1) do
      delete news_site_url(@news_site)
    end

    assert_redirected_to news_sites_url
  end
end
