class Response < ApplicationRecord
  validates :user_id, :answer_choice_id, presence: true

  belongs_to :respondent,
    foreign_key: :user_id,
    class_name: 'User'
  belongs_to :answer_choice

  has_many :users, through: :answer_choice

  def not_duplicate_response

  end

end
