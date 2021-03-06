require 'rails_helper'
include RandomData

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
#   let(:post) {Post.create!(title: "New Post Title", body: "New Post Body")}
   let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
   let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
   let(:comment) { Comment.create!(body: 'Comment Body', post: post) }
   let(:sponsored) { Sponsored.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
 
   describe "attributes" do
     it "should respond to body" do
       expect(comment).to respond_to(:body)
     end
   end
end
