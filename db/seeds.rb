# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u2 = User.create!(email: 'jazzie@gmail.com', password: '12345')
u3 = User.create!(email: 'tina@gmail.com', password: 'qwerty')

p1 = u2.articles.create!(title: 'First article', body: 'Testing your API')
p2 = u3.articles.create!(title: 'Second article', body: 'Creating a blog')

p3 = u2.articles.create!(title: 'Third article', body: 'Learning to Code')
p4 = u2.articles.create!(title: 'Fourth article', body: 'Becoming a Developer')

p3.comments.create!(body: "Great article!", user: u3)
p4.comments.create!(body: "Please write more posts like this one", user: u2)
