require 'test_helper'

class DllsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dll = dlls(:one)
  end

  test "should get index" do
    get dlls_url
    assert_response :success
  end

  test "should get new" do
    get new_dll_url
    assert_response :success
  end

  test "should create dll" do
    assert_difference('Dll.count') do
      post dlls_url, params: { dll: { name: @dll.name, spec_path: @dll.spec_path } }
    end

    assert_redirected_to dll_url(Dll.last)
  end

  test "should show dll" do
    get dll_url(@dll)
    assert_response :success
  end

  test "should get edit" do
    get edit_dll_url(@dll)
    assert_response :success
  end

  test "should update dll" do
    patch dll_url(@dll), params: { dll: { name: @dll.name, spec_path: @dll.spec_path } }
    assert_redirected_to dll_url(@dll)
  end

  test "should destroy dll" do
    assert_difference('Dll.count', -1) do
      delete dll_url(@dll)
    end

    assert_redirected_to dlls_url
  end
end
