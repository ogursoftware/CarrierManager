require "test_helper"

class KaderesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kadere = kaderes(:one)
  end

  test "should get index" do
    get kaderes_url
    assert_response :success
  end

  test "should get new" do
    get new_kadere_url
    assert_response :success
  end

  test "should create kadere" do
    assert_difference("Kadere.count") do
      post kaderes_url, params: { kadere: { carrier_company: @kadere.carrier_company, email: @kadere.email, name: @kadere.name, phone: @kadere.phone, trailer_number: @kadere.trailer_number, truck_number: @kadere.truck_number } }
    end

    assert_redirected_to kadere_url(Kadere.last)
  end

  test "should show kadere" do
    get kadere_url(@kadere)
    assert_response :success
  end

  test "should get edit" do
    get edit_kadere_url(@kadere)
    assert_response :success
  end

  test "should update kadere" do
    patch kadere_url(@kadere), params: { kadere: { carrier_company: @kadere.carrier_company, email: @kadere.email, name: @kadere.name, phone: @kadere.phone, trailer_number: @kadere.trailer_number, truck_number: @kadere.truck_number } }
    assert_redirected_to kadere_url(@kadere)
  end

  test "should destroy kadere" do
    assert_difference("Kadere.count", -1) do
      delete kadere_url(@kadere)
    end

    assert_redirected_to kaderes_url
  end
end
