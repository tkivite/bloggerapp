class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user
    
    def children
        Comment.where(parent_type: 'COMMENT', parent_id: id)
    end
end
