class Post < ActiveRecord::Base
    has_many :comments,dependent: :destroy
    validates_presence_of :title,:headline,:content,
                    length: { minimum: 5 }  
end
