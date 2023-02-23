class Blog < ApplicationRecord
  belongs_to :user
  counter_culture :user, column_name: proc {|model| !model.private? ? 'blogs_count' : nil}
end
