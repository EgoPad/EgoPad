require 'test_helper'

class NotesCategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => NotesCategory.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    NotesCategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    NotesCategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to notes_category_url(assigns(:notes_category))
  end
  
  def test_edit
    get :edit, :id => NotesCategory.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    NotesCategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => NotesCategory.first
    assert_template 'edit'
  end

  def test_update_valid
    NotesCategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => NotesCategory.first
    assert_redirected_to notes_category_url(assigns(:notes_category))
  end
  
  def test_destroy
    notes_category = NotesCategory.first
    delete :destroy, :id => notes_category
    assert_redirected_to notes_categories_url
    assert !NotesCategory.exists?(notes_category.id)
  end
end
