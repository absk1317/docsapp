FactoryBot.define do
  factory :patient do
    name        { Faker::Name.name }
    address     { Faker::Address.full_address }
    description { Faker::Lorem.sentence }
    mobile      { (6..9).to_a.sample.to_s + (0..9).to_a.sample(9).join() }
    status      { %w[active cured revisit].sample }
  end
end
