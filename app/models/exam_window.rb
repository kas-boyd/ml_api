class ExamWindow < ApplicationRecord
    belongs_to :exam

    validates :exam, presence: true
end
