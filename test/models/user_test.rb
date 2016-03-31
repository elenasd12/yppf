#this is the test class
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "user's email should be valid" do
      user = users(:one)
      
      assert user.valid?
         
  end
  
  test "user should be instance of user" do
      user = User.new
     assert_instance_of User,user,"user should be instance of the class User"
          
  end
  
  test "user's required attributes must not be empty" do
      user = users(:one)
       assert user.valid?
        
  end
end