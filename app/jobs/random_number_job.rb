class RandomNumberJob < ApplicationJob
  queue_as :random_number

  def perform(*args)
    puts "Creando mock de usuario: #{Time.now.to_i}"
    user_mock = UserDataMock.new
    user_mock.name = Faker::Name.name
    user_mock.email = Faker::Internet.email
    user_mock.phone = Faker::PhoneNumber.cell_phone
    user_mock.token = Faker::Number.number(digits: 6)
    user_mock.save
    sleep(1)
  end
end
