require 'test_helper'

class TasksCategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TasksCategory.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TasksCategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    TasksCategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tasks_category_url(assigns(:tasks_category))
  end
  
  def test_edit
    get :edit, :id => TasksCategory.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TasksCategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TasksCategory.first
    assert_template 'edit'
  end

  def test_update_valid
    TasksCategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TasksCategory.first
    assert_redirected_to tasks_category_url(assigns(:tasks_category))
  end
  
  def test_destroy
    tasks_category = TasksCategory.first
    delete :destroy, :id => tasks_category
    assert_redirected_to tasks_categories_url
    assert !TasksCategory.exists?(tasks_category.id)
  end
end
