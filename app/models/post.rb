class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: fiction || non-fiction }
  
  def validate(record)
    unless record.title.match?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
      record.errors[:title] << "Please use only those statements in your title!"
    end
  end
end
