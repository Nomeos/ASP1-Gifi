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

# Create Type of person
TypePerson.create!(name: 'Student', description: 'Student of the school', slug: 'STU')
TypePerson.create!(name: 'Teacher', description: 'Teacher of the school', slug: 'TEA')

# Create students
50.times do
  Person.create!(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    type_person_id: TypePerson.find_by(slug: 'STU').id
  )
end

# Create teachers
10.times do
  Person.create!(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    type_person_id: TypePerson.find_by(slug: 'TEA').id
  )
end