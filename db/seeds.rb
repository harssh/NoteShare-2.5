# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.delete_all
Notesheet.delete_all
User.delete_all

courselist = [{:name => 'Math', :prof => 'John Doe'},
              {:name => 'English', :prof => 'Jane Smith'},
              {:name => 'Chemistry', :prof => 'John Oxygen'},
              {:name => 'History', :prof => 'Mary Oldstuff'},
              {:name => 'Spanish', :prof => 'Dave Spain'},
              {:name => 'Linear Algebra', :prof => 'Mark Matrix'},
              {:name => 'Probability', :prof => 'Tom Bayes'},
              {:name => 'Anthropology', :prof => 'Lebron James'},
              {:name => 'French', :prof => 'Kevin Durant'},
              {:name => 'Music Theory', :prof => 'Kawhi Leonard'},
              {:name => 'Finance', :prof => 'Steph Curry'},
              {:name => 'Marketing', :prof => 'Alex Caruso'},
              {:name => 'Management', :prof => 'Giannis Antetokoumpo'},
              {:name => 'Literature', :prof => 'Zion Williamson'},
              {:name => 'Physics', :prof => 'Kyrie Irving'},
              {:name => 'Biology', :prof => 'James Harden'},
              {:name => 'Organic Chemitry', :prof => 'Russell Westbrook'},
              {:name => 'Calculus', :prof => 'Anthony Davis'},
              {:name => 'Legal Studies', :prof => 'Joel Embiid'},
              {:name => 'Statistics', :prof => 'Klay Thompson'},
              
              ]

courselist.each do |course|
    Course.create!(course)
end



User.create!(:name => 'Sarper Tutuncuoglu', :email => 'stutuncuoglu@tulane.edu', :password => 'password', :usertype => :student)



i = 0

Course.all.each do |course|
  
  course.notesheets.create!(:content => "Sample note content", :course_id => course.id, :author_id => i, :date_created => "10/17/19")
  i += 1
  course.notesheets.create!(:content => "Different sample note content", :course_id => course.id, :author_id => i, :date_created => "10/18/19")
  i += 1
end

userlist = [{:name => "Carl Hart", :email => "carl.hart@gmail.com", :password => "apple", :usertype => :student},
            {:name => "Joe Vance", :email => "joe.vance@gmail.com", :password => "banana", :usertype => :student},
            {:name => "Piers McLean", :email => "piers.mclean@gmail.com", :password => "pear", :usertype => :student},
            {:name => "Irene Springer", :email => "irene.springer@gmail.com", :password => "peach", :usertype => :student},
            {:name => "Kevin Wilkins", :email => "kevin.wilkins@gmail.com", :password => "pineapple", :usertype => :student},
            {:name => "Jake Macleod", :email => "jake.macleod@gmail.com", :password => "orange", :usertype => :student},
            {:name => "Madeleine Piper", :email => "madeleine.piper@gmail.com", :password => "watermelon", :usertype => :student},
            {:name => "Nicholas James", :email => "nicholas.james@gmail.com", :password => "honeydew", :usertype => :student},
            {:name => "Sebastian Ball", :email => "sebastian.ball@gmail.com", :password => "cantalope", :usertype => :student},
            {:name => "Sam Reid", :email => "sam.reid@gmail.com", :password => "blueberry", :usertype => :student},
            {:name => "Carolyn Fisher", :email => "carolyn.fisher@gmail.com", :password => "cherry", :usertype => :student},
            {:name => "Samantha Hodges", :email => "samantha.hodges@gmail.com", :password => "blackberry", :usertype => :student},
            {:name => "Brian Kelly", :email => "brian.kelly@gmail.com", :password => "raspberry", :usertype => :student},
            {:name => "Carl Wright", :email => "carl.wright@gmail.com", :password => "kumquat", :usertype => :student},
            {:name => "Rebecca Macdonald", :email => "rebecca.macdonald@gmail.com", :password => "clementine", :usertype => :student},
            {:name => "Maria Hunter", :email => "maria.hunter@gmail.com", :password => "papaya", :usertype => :student},
            {:name => "Mary Fraser", :email => "mary.fraser@gmail.com", :password => "mango", :usertype => :student},
            {:name => "Boris Reid", :email => "boris.reid@gmail.com", :password => "grape", :usertype => :student},
            {:name => "Sarah Hemmings", :email => "sarah.hemmings@gmail.com", :password => "lemon", :usertype => :student},
            {:name => "Trevor Dowd", :email => "trevor.dowd@gmail.com", :password => "lime", :usertype => :student}
            ]

userlist.each do |user|
    User.create!(user)
end