class Station < ActiveRecord::Base
  has_and_belongs_to_many :lines

  validates :name, presence: true, uniqueness: true, length: {maximum: 20}
end
