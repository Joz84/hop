# Delete old data
puts 'Initializing seeds...'
Website.destroy_all
Template.destroy_all
User.destroy_all

# Create 2 users
puts '😬 Creating 2 users'
User.create!(email: 'paul@gmail.com', password: '123456')
User.create!(email: 'aquaj@aquaj.com', password: '123456')

# Create 4 templates
puts '🎨 Creating 4 templates'
templates = ['north', 'south', 'west', 'east']

templates.each do |template|
  Template.create!(
    name: template,
    slug: "#{template}"
  )
end
