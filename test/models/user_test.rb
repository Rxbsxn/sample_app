require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
      @user = User.new(name: "Andrew", email: 'jogn@gs.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'name should be present' do
    @user.name = ''
    assert_not @user.valid?
  end

  test 'email should be present' do
    @user.email = ''
    assert_not @user.valid?
  end

  test 'name should not to be too long' do 
    @user.name = 's' * 51
    assert_not @user.valid?
  end

  test 'email should not to be too long' do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
end
