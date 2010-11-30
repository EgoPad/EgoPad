require 'test_helper'

class ContactsCategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => ContactsCategory.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    ContactsCategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ContactsCategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contacts_category_url(assigns(:contacts_category))
  end
  
  def test_edit
    get :edit, :id => ContactsCategory.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    ContactsCategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ContactsCategory.first
    assert_template 'edit'
  end

  def test_update_valid
    ContactsCategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ContactsCategory.first
    assert_redirected_to contacts_category_url(assigns(:contacts_category))
  end
  
  def test_destroy
    contacts_category = ContactsCategory.first
    delete :destroy, :id => contacts_category
    assert_redirected_to contacts_categories_url
    assert !ContactsCategory.exists?(contacts_category.id)
  end
end
