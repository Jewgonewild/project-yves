# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'test', :email => 'test@test.com', :password => '123456', :password_confirmation => '123456'
puts 'New user created: ' << user.name
user1 = User.create! :name => 'me', :email => 'me@board.com', :password => '123456', :password_confirmation => '123456'
puts 'New user created: ' << user1.name
user2 = User.create! :name => 'you', :email => 'you@board.com.com', :password => '123456', :password_confirmation => '123456'
puts 'New user created: ' << user2.name

# creating posts
post1 = Post.create! :title => 'This is the title of the post 1',
                     :message => 'Post 1 message alea jacta est. to bad I forgot my latin',
                     :user => user
puts 'new post created ' << post1.title
post2 = Post.create! :title => 'This is the title of the post 2',
                     :message => 'Post 2 message alea jacta est. to bad I forgot my latin',
                     :user => user
puts 'new post created ' << post2.title
post3 = Post.create! :title => 'This is the title of the post 3',
                     :message => 'Post 3 message alea jacta est. to bad I forgot my latin',
                     :user => user
puts 'new post created ' << post3.title

# creating comments
comment1 = post1.comments.create! :title => 'Title for comment 1',
                                  :comment => 'Text of comment 1 bla bla bla....'
puts 'new comment created ' << comment1.title
comment2 = post1.comments.create! :title => 'Title for comment 2',
                                  :comment => 'Text of comment 2 bla bla bla....'
puts 'new comment created ' << comment2.title
