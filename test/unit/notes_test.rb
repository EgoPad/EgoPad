require 'test_helper'

class NotesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Notes.new.valid?
  end
end
