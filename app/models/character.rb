# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  # belongs_to(:movie, { :class_name => "Movie", :foreign_key => "movie_id"})

  # same as code above because ruby matches :movie and capitalzied it to class Movie
  # if :zebra, ruby obviously cannot match it to Movie so = error
  # code: belongs_to(:movie, { :foreign_key => "movie_id"})

  # still same as code above
  # defines more method
  # one to many between characters and movie
  belongs_to(:movie)
  
  # def movie
    # key = self.movie_id

    # matching_set = Movie.where({ :id => key })

    # the_one = matching_set.at(0)

    # return the_one
   # end
  
  belongs_to(:actor)
  # def actor
    # key = self.actor_id

      # matching_set = Actor.where({ :id => key })

      # the_one = matching_set.at(0)

      # return the_one
  # end
end
