Image.destroy_all

Image.create(
  name: 'My Cat',
  creator: 'Nisse',
  price: 10,
  print_size: '200x200',
  file:  File.new("#{Rails.root}/spec/images/my_cat.png")
)

Image.create(
  name: 'Sunset',
  creator: 'John',
  price: 17,
  print_size: '200x200',
  file:  File.new("#{Rails.root}/spec/images/my_sunset.png")
)

Image.create(
  name: 'Boat',
  creator: 'Alex',
  price: 20,
  print_size: '200x200',
  file:  File.new("#{Rails.root}/spec/images/my_boat.png")
)


p "Created #{Image.count} images"
