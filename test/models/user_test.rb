require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "user's email should be valid" do
      user = User.find(1)
      
      user.email="mmm"
      
      assert user.valid?,"user's email should be valid"    
         
  end
  
  test "user should be instance of user" do
      user = User.new
     assert_instance_of User,user,"user should be instance of the class User"
          
  end
  
  test "user's required attributes must not be empty" do
      user = User.find(1)
      user.name=""
      assert user.errors[:name].any?,"name must not be empty"
      assert user.errors[:email].any?,"email must not be empty"
      assert user.errors[:encrypted_password].any?,"email must not be empty"
        
  end
end
