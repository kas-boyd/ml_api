class User < ApplicationRecord
    belongs_to :college

    validates :first_name, :last_name, :phone_number, :college_id, :exam_id, :start_time, presence: true
end
