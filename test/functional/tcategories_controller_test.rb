require 'test_helper'

class TcategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Tcategory.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Tcategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tcategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tcategory_url(assigns(:tcategory))
  end
  
  def test_edit
    get :edit, :id => Tcategory.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Tcategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tcategory.first
    assert_template 'edit'
  end

  def test_update_valid
    Tcategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tcategory.first
    assert_redirected_to tcategory_url(assigns(:tcategory))
  end
  
  def test_destroy
    tcategory = Tcategory.first
    delete :destroy, :id => tcategory
    assert_redirected_to tcategories_url
    assert !Tcategory.exists?(tcategory.id)
  end
end
