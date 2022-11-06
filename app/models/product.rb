class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

#     `Product#leave_review(user, star_rating, comment)`
#   - takes a `User` (an instance of the `User` class), a `star_rating` (integer), and a `comment` (string) as arguments, and creates a new `Review` in the database associated with this Product and the User
    def leave_review(user, star_rating, comment)
       Review.create(star_rating: star_rating, comment: comment, product_id:  self.id,  user_id: user.id)
    end
    # `Product#print_all_reviews`
    # - should `puts` to the terminal a string representing each review for this product
    # - each review should be formatted as follows: `Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}`
    ## the  product contain many reviews  
    def print_all_reviews
       puts "Review for #{name} by #{self.users.find.user.name}: star_rating #{ self.reviews.collect{|review| review.star_rating}}. comments #{self.reviews.collect{|review| review.comment}}" 
    end 
    
    def average_rating
       self.reviews.average(:star_rating).to_f     
    end
    
end