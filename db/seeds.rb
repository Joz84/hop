# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

Website.destroy_all
Template.destroy_all
User.destroy_all

# Create the lists of data for seeding, from Le Wagon alumni
# Users
user_list = [
  "Alexandre",
  "Valentin",
  "Philippe",
  "Reka"
]
email_list = [
  "alexandre@lewagon.io",
  "valentin@lewagon.io",
  "philippe@lewagon.io",
  "reka@lewagon.io"
]

# Templates
template_list = [
  "North",
  "South",
  "West",
  "East"
]

# Websites
description_list = [
  "J'ai fait Kedge Business School, je suis revenu du Chili il y a un an et après une longue période d'inactivité, j'ai cherché une formation complémentaire à mon CV. Le wagon correspond parfaitement, car c'est intensif et cela rajoute une corde à mon arc.",
  "I did a Master in law. I worked for a year in the legal department of a Parisian company. I wish to learn to code for past the technical step in my personal projects.",
  "CFO, COO, CEO in multinational contexts. 360° advisor to SMEs, both profitable and distressed. Former Réseau Entreprendre laureate, former Innovaday laureate. Recent Bordeaux Startup Weekend participant. Doing the Full Stack track to be able to work efficiently with Devs and UX/UI designers in my next entrepreneurship adventure !",
  "I worked in the health care sector. I want to learn to code because I am in interested in web development and I would like to pursue a career in this sector after the bootcamp."
]
photo_list = [
  "Profile_Alexandre.jpg",
  "Profile_Valentin.jpg",
  "Profile_Philippe.jpg",
  "Profile_Reka.jpg"
]
background_list = [
  "Background_1.jpg",
  "Background_2.jpg",
  "Background_3.jpg",
  "Background_4.jpg",
]

# Create the main user
User.create(name: 'Paul', email: 'paul@gmail.com', password: '123456')

# Create other users
puts 'Creating 4 fake Users, Templatea and Websites...'
for i in 0..3
  print '👨 '
  user = User.new(
    name: user_list[i],
    email: email_list[i],
    password: "123456"
    )
  user.save!

  print '🖌'
  template = Template.new(
    name: template_list[i],
    slug: "template_#{i+1}"
  )
  template.save!

  print '💻 '
  website = Website.new(
    title: "Hi I'm #{user.name}!",
    description: description_list[i],
    facebook_url: "#",
    twitter_url: "#",
    emai: email_list[i],
    url: "#{user.name}.lewagon.io",
    user_id: user[:id],
    template_id: template[:id],
    background_image: background_list[i],
    profile_image: photo_list[i],
    )
  website.save!
end
