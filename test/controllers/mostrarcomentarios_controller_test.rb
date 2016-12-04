require 'test_helper'

class MostrarcomentariosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mostrarcomentarios_show_url
    assert_response :success
  end

  test "should get index" do
    get mostrarcomentarios_index_url
    assert_response :success
  end

end
