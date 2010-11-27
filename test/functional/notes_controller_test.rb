require 'test_helper'

class NotesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Notes.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Notes.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Notes.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to notes_url(assigns(:notes))
  end
  
  def test_edit
    get :edit, :id => Notes.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Notes.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Notes.first
    assert_template 'edit'
  end

  def test_update_valid
    Notes.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Notes.first
    assert_redirected_to notes_url(assigns(:notes))
  end
  
  def test_destroy
    notes = Notes.first
    delete :destroy, :id => notes
    assert_redirected_to notes_url
    assert !Notes.exists?(notes.id)
  end
end
