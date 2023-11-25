require 'test_helper'

class Ruby::SemaphoreTest < ActiveSupport::TestCase
  test 'it has a version number' do
    assert Semaphore::VERSION
  end
end
