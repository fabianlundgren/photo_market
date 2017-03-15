FactoryGirl.define do
  factory :image do
    name 'My Cat'
    creator 'Nisse'
    price 10
    print_size '200x200'
    file { File.new("#{Rails.root}/spec/images/my_cat.png") }
  end
end
