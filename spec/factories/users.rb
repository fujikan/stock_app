FactoryBot.define do
  factory :user do
    username {'担当'}
    email {Faker::Internet.free_email}
    password {'123456'}
    password_confirmation {password}
  end
end
