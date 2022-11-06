class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews


    def leave_review(user, star_rating, comment)
       Review.create(star_rating: star_rating, comment: comment, product_id:  self.id,  user_id: user.id)
    end
    
    def print_all_reviews
      self.reviews.each do |review|
         puts "Review for  #{review.product.name} by #{review.user.name} : star_rating #{review.star_rating}.#{review.comment}" 
      end
    end 
    
    def average_rating
       self.reviews.average(:star_rating).to_f     
    end
    
end