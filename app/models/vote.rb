class Vote < ActiveRecord::Base
  belongs_to :suggestion
  belongs_to :user
  # validates :user, uniqueness: { scope: :suggestion,
  #    message: "Only one user vote per suggestion" }
end
