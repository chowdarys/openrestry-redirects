require 'test_helper'

class HostRedirectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @host_redirect = host_redirects(:one)
  end

  test "should get index" do
    get host_redirects_url
    assert_response :success
  end

  test "should get new" do
    get new_host_redirect_url
    assert_response :success
  end

  test "should create host_redirect" do
    assert_difference('HostRedirect.count') do
      post host_redirects_url, params: { host_redirect: { dest: @host_redirect.dest, orig: @host_redirect.orig } }
    end

    assert_redirected_to host_redirect_url(HostRedirect.last)
  end

  test "should show host_redirect" do
    get host_redirect_url(@host_redirect)
    assert_response :success
  end

  test "should get edit" do
    get edit_host_redirect_url(@host_redirect)
    assert_response :success
  end

  test "should update host_redirect" do
    patch host_redirect_url(@host_redirect), params: { host_redirect: { dest: @host_redirect.dest, orig: @host_redirect.orig } }
    assert_redirected_to host_redirect_url(@host_redirect)
  end

  test "should destroy host_redirect" do
    assert_difference('HostRedirect.count', -1) do
      delete host_redirect_url(@host_redirect)
    end

    assert_redirected_to host_redirects_url
  end
end
