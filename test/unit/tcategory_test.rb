require 'test_helper'

class TcategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Tcategory.new.valid?
  end
end
