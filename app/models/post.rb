class Post < ApplicationRecord
    belongs_to :user

    has_many :comments, dependent: :destroy

    def count_comments
        Comment.where(post_id: id, parent_type: 'POST').count
    end

    def comments
        Comment.where(post_id: id, parent_type: 'POST')
    end
end
