require 'test_helper'

module API
  class AutoresControllerTest < ActionDispatch::IntegrationTest
    setup do
      @autor = autores(:one)
    end

    test "should get index" do
      get api_autores_url, as: :json
      assert_response :success
    end

    test "should create autor" do
      assert_difference('Autor.count') do
        post api_autores_url, params: { autor: { email: @autor.email, nome: @autor.nome, password_digest: @autor.password_digest } }, as: :json
      end

      assert_response 201
    end

    test "should show autor" do
      get api_autor_url(@autor), as: :json
      assert_response :success
    end

    test "should update autor" do
      patch api_autor_url(@autor), params: { autor: { email: @autor.email, nome: @autor.nome, password_digest: @autor.password_digest } }, as: :json
      assert_response 200
    end

    test "should destroy autor" do
      assert_difference('Autor.count', -1) do
        delete api_autor_url(@autor), as: :json
      end

      assert_response 204
    end
  end
end
