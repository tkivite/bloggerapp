FactoryGirl.define do 
    factory :comment do
      content 'a' * 20
      parent_type 'POST'
      parent_id post.id
      post      
    end
  end