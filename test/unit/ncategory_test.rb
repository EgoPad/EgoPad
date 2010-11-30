require 'test_helper'

class NcategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ncategory.new.valid?
  end
end
