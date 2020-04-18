class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: [Fiction, Non-Fiction] }
  
  def validate(record)
    unless record.email.match?(/flatironschool.com/)
      record.errors[:email] << "We're only allowed to have people who work for the company in the database!"
end
