require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "user's email should be valid" do
      user = User.find(1)
      #user.name="john smith"
      user.email="mmm@mm.com"
      #user.encrypted_password="asdwqe"
      puts user.valid?
      assert user.invalid?, "user's email is not valid"      
  end
end
