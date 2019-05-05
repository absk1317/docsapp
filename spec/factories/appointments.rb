FactoryBot.define do
  factory :appointment do
    date          { Faker::Date.backward }
    next_schedule { [nil, Faker::Date.forward].sample }
    amount        { (1..1000).to_a.sample }
    patient       { create(:patient) }
    observations  { Faker::Lorem.sentence }
    medicines     { Faker::Lorem.sentence }
  end
end
