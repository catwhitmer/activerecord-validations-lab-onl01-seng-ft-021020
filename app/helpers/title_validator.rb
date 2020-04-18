 class TitleValidator < ActiveModel::Validator
   def clickbait(record)
     unless record.title.match?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
      record.errors[:title] << "Please use those statements in your title!"
      end
  end
end