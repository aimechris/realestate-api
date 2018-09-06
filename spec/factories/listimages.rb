FactoryBot.define do
  factory :listimage do
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/logo_image.jpg'), 'image/jpeg') }
    listing_id nil
  end
end
