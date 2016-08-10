# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

User.create! [
  { username: "Fiorina", password_digest: "shrek" },
  { username: "Trump", password_digest: "wall" },
  { username: "Carson", password_digest: "stal" },
  { username: "Clinton", password_digest: "mail" }
]

Profile.create! [
  { gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina", user_id: User.find_by(username: "Fiorina")[:id] },
  { gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump", user_id: User.find_by(username: "Trump")[:id] },
  { gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson", user_id: User.find_by(username: "Carson")[:id] },
  { gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton", user_id: User.find_by(username: "Clinton")[:id] }
]

TodoList.create! [
  {list_name: "whoami", list_due_date: Date.today.next_year, user_id: User.find_by(username: "Fiorina")[:id] },
  {list_name: "build", list_due_date: Date.today.next_year, user_id: User.find_by(username: "Trump")[:id] },
  {list_name: "dontknowme", list_due_date: Date.today.next_year, user_id: User.find_by(username: "Carson")[:id] },
  {list_name: "send", list_due_date: Date.today.next_year, user_id: User.find_by(username: "Clinton")[:id] }
]

ran_title = "figure"
ran_des = "i am total nonsense"

TodoItem.create! [
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "whoami")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "whoami")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "whoami")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "whoami")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "whoami")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "build")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "build")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "build")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "build")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "build")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "dontknowme")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "dontknowme")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "dontknowme")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "dontknowme")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "dontknowme")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "send")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "send")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "send")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "send")[:id] },
  { due_date: Date.today.next_year, title: ran_title, description: ran_des, completed: false, todo_list_id: TodoList.find_by(list_name: "send")[:id] }
]
