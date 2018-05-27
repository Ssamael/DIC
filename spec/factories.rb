FactoryBot.define do
    factory :user do
      email 'test@example.com'
      password 'f4k3p455w0rd'
  
      # if needed
      # is_active true
    end

    factory :concert do
      band 'some shit'
      date '2066-06-06'
      place 'hell'
      
    end
  end