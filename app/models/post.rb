class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validate.clickbait
  
  def clickbait(record)
    unless record.title.match?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
      record.errors[:title] << "Please use those statements in your title!"
    end
  end
end
