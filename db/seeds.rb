# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Job.create(
  name: 'Vue.js developer', 
  job_type: :full_time,
  what_we_do: 'We are a VC funded company looking to build something that does something for someone',
  why_we_do: 'We are passionate about some stuff to make stuff and whatever',
  description: 'We’re looking for an exceptional developer to join as one of our first engineers. The ideal candidate is passionate about aviation and strongly believes that existing air travel experiences can and should be improved upon. Professionally, you hve shipped code in production apps. You are intimately familiar with iOS SDKs but you are also knowledgeable and capable when it comes to other aspects of development, like deployment, continuous integration, and designing backend services. You realize that in a startup it is important to be versatile, adaptable, and to wear many hats; you are an expert at that.',
  company: 'Microsoft Corp'
)

Job.create(
  name: 'Fullstack developer', 
  job_type: :intern,
  what_we_do: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  why_we_do: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ",
  description: %Q{
  + Raise the bar. 
  + Apply rigor. 
  + Be yourself. 
  + No fake work. 
  + Play as a team. 
  + Be self driven. 
  + Be direct but kind. 
  + Support a balanced life. 
  + Assume best intentions. 
  + Empathize with users.
  },
  company: 'Google'
)
