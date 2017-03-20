require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
      @user = User.new(name: "Andrew", email: 'jogn@gs.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end
end
