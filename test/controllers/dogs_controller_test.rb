require 'test_helper'

class DogsControllerTest < ActionController::TestCase
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post :create, dog: { allergies: @dog.allergies, breed_id: @dog.breed_id, dob: @dog.dob, in_daycare: @dog.in_daycare, name: @dog.name, owner_id: @dog.owner_id, vet_name: @dog.vet_name, vet_phone: @dog.vet_phone }
    end

    assert_redirected_to dog_path(assigns(:dog))
  end

  test "should show dog" do
    get :show, id: @dog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dog
    assert_response :success
  end

  test "should update dog" do
    patch :update, id: @dog, dog: { allergies: @dog.allergies, breed_id: @dog.breed_id, dob: @dog.dob, in_daycare: @dog.in_daycare, name: @dog.name, owner_id: @dog.owner_id, vet_name: @dog.vet_name, vet_phone: @dog.vet_phone }
    assert_redirected_to dog_path(assigns(:dog))
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete :destroy, id: @dog
    end

    assert_redirected_to dogs_path
  end
end
