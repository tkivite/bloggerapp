# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def seed_users
    user_id = 0
    10.times do 
      User.create(
        firstname: "first_#{user_id}",
        lastname: "last_#{user_id}",
        email: "test#{user_id}@test.com",
        password: '123456',
        password_confirmation: '123456'
      )
      user_id = user_id + 1
    end
  end
 
  
  def seed_posts
    users = User.all  
    users.each do |user|
      5.times do
       P = Post.create(
          title: Faker::Lorem.sentences[0], 
          content: Faker::Lorem.sentences[0], 
          image: '', 
          user_id: user.id
        )
        P.upload_image.attach(io: File.open(Rails.root.join('app','assets',
          'images', 'sample.webp')),filename: p.id)
         
      end
    end
  end

  def seed_comments
    posts = Post.all
    parent = 'POST'
    posts.each do |post|
      5.times do
        Comment.create(         
          content: Faker::Lorem.sentences[0], 
          post_id: post.id, 
          user_id: rand(1..9),
          parent_type: parent,
          parent_id: post.id
        )
      end
    end

    comments = Comment.all
    parent = 'COMMENT'
    comments.each do |comment|
        2.times do
          Comment.create(         
            content: Faker::Lorem.sentences[0], 
            post_id: comment.post_id, 
            user_id: rand(1..9),
            parent_type: parent,
            parent_id: comment.id
          )
        end
      end

  end

  def seed_likes
    posts = Post.all
    posts.each do |post|
      5.times do
        Like.create(         
          post_id: post.id, 
          user_id: rand(1..9)
        )
      end
    end
  end

  
  
  seed_users  
  seed_posts
  seed_comments
  seed_likes