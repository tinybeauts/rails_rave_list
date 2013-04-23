require 'Faker'

100.times do 
  Post.create :name => (Faker::Company.bs + rand(9..99).to_s),
              :description => Faker::Lorem.paragraph,
              :email => Faker::Internet.email,
              :category_id => 3
end

100.times do 
  Post.create :name => "#{Faker::Address.city}#{Faker::Address.city_suffix} #{Faker::Company.catch_phrase}",
              :description => Faker::Lorem.paragraph,
              :email => Faker::Internet.email,
              :category_id => 2
end

100.times do 
  Post.create :name => "The #{Faker::Name.last_name} + #{rand(1..9)}",
              :description => Faker::Lorem.paragraph,
              :email => Faker::Internet.email,
              :category_id => 1
end

100.times do 
  Post.create :name => "#{Faker::Internet.user_name} #{Faker::Name.suffix} #{Faker::Company.suffix}",
              :description => Faker::Lorem.paragraph,
              :email => Faker::Internet.email,
              :category_id => rand(5..6)
end

100.times do 
  Post.create :name => "#{Faker::Name.first_name} #{Faker::Name.suffix}",
              :description => Faker::Lorem.paragraph,
              :email => Faker::Internet.email,
              :category_id => 4
end

Category.create :name => "Glowsticks"
Category.create :name => "Flash Raves"
Category.create :name => "Drugs"
Category.create :name => "DJ's"
Category.create :name => "Finger Lights"
Category.create :name => "Dance Floors"
