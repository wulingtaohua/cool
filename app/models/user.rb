class User < ActiveRecord::Base
  attr_accessible :active, :bio, :first_name, :last_name
end
