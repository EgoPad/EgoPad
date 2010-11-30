require 'test_helper'

class CcategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Ccategory.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Ccategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Ccategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ccategory_url(assigns(:ccategory))
  end
  
  def test_edit
    get :edit, :id => Ccategory.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Ccategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ccategory.first
    assert_template 'edit'
  end

  def test_update_valid
    Ccategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ccategory.first
    assert_redirected_to ccategory_url(assigns(:ccategory))
  end
  
  def test_destroy
    ccategory = Ccategory.first
    delete :destroy, :id => ccategory
    assert_redirected_to ccategories_url
    assert !Ccategory.exists?(ccategory.id)
  end
end
