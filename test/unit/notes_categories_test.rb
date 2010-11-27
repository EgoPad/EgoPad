require 'test_helper'

class NotesCategoriesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert NotesCategories.new.valid?
  end
end
