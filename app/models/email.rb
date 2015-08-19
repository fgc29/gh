class Email < ActiveRecord::Base
  # this creates the relationship to the candidate by adding a foreign_key to the email table
  belongs_to :candidate
end
