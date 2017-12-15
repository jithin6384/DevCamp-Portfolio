class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name
     def first_name
         self.name.split.first
     end

     def middle_name
     	q = self.name.split(" ")
        if q.length >= 2
        	middle_name = q[1]
        	return middle_name
        else
        	last_name
        end
     end

     def last_name
     	self.name.split.last
      
      end

end
