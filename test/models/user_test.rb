require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user's email should be valid" do
      user = User.find(1)
      #user.name="john smith"
      user.email="shoshan.eden@gmail.com"
      #user.encrypted_password="asdwqe"
      assert user.valid?
  end
end
