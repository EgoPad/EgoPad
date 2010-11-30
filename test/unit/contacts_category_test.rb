require 'test_helper'

class ContactsCategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ContactsCategory.new.valid?
  end
end
