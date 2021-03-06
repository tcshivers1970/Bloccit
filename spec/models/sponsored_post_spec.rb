require 'rails_helper'
include RandomData

RSpec.describe Post, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
# #1
#   let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }
   let(:topic) {Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph)} 
   let(:sponsored_post) {topic.sponsored_posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph)}
   it { should belong_to(:topic)}
  
   describe "attributes" do
# #2
     it "should respond to title" do
       expect(:sponsored_post).to respond_to(:title)
     end
# #3
     it "should respond to body" do
       expect(:sponsoredpost).to respond_to(:body)
     end
   end
end
