require 'test_helper'

class NcategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Ncategory.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Ncategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Ncategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ncategory_url(assigns(:ncategory))
  end
  
  def test_edit
    get :edit, :id => Ncategory.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Ncategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ncategory.first
    assert_template 'edit'
  end

  def test_update_valid
    Ncategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ncategory.first
    assert_redirected_to ncategory_url(assigns(:ncategory))
  end
  
  def test_destroy
    ncategory = Ncategory.first
    delete :destroy, :id => ncategory
    assert_redirected_to ncategories_url
    assert !Ncategory.exists?(ncategory.id)
  end
end
