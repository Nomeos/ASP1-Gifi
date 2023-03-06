require 'faker'

# Create categories
5.times do
  Category.create!(name: Faker::Book.genre)
end

# Create lectures
10.times do
  Lecture.create!(
    name: Faker::Educator.course_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    start_date: Faker::Date.between(from: 1.month.ago, to: 1.month.from_now),
    end_date: Faker::Date.between(from: 1.month.from_now, to: 3.months.from_now),
    category_id: Category.all.sample.id
  )
end