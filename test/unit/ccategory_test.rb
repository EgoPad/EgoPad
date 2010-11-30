require 'test_helper'

class CcategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ccategory.new.valid?
  end
end
