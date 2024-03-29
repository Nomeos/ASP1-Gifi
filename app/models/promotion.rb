class Promotion < ApplicationRecord
  belongs_to :teacher, class_name: 'Person', foreign_key: 'teacher_id'
  has_many :person_promotions
  has_many :people, through: :person_promotions
  has_many :grades
  has_many :lecture_promotions
  has_many :lectures, through: :lecture_promotions

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
