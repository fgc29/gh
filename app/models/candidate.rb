class Candidate < ActiveRecord::Base
  # by having this relationship now we have access to .emails directly accessed by a Candidate object.l
  has_many  :emails
end
