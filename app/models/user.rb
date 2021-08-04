class User < ApplicationRecord
    has_many :sightings
    validates :name, uniqueness:{:message => "Username already exists."}, length: {in: 1..30}
end
