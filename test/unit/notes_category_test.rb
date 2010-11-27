require 'test_helper'

class NotesCategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert NotesCategory.new.valid?
  end
end
