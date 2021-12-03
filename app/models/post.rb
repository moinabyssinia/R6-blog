class Post < ApplicationRecord
    # one-to-many connection
    # adds 'comments' method to all post objects
    has_many :comments
end
