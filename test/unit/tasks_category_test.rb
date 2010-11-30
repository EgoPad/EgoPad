require 'test_helper'

class TasksCategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TasksCategory.new.valid?
  end
end
