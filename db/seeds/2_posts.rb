# 10.times do
#   Post.create
# end
# puts 'posts were created!'

User.find_each do |user|
  random(20).times do |i|
    user.posts.create body: i, title: i
  end
end
