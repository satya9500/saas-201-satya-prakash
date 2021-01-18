# num = 5
# 10.times { |i| puts num * i }

# object = {
#   :fname => "Satya",
#   :lname => "Prakash",
#   1 => 100,
# }
# puts object[:lname]
# def sayhi(name, age)
#   return ("Hey " + name + ", Age is " + age.to_s)
# end

# puts(sayhi("Satya", 20))
# ismale = false
# istall = true
# if ismale and istall
#   puts ("You are tall male")
# elsif ismale and !istall
#   puts ("You are not a tall male")
# else
#   puts ("You are not a male")
# end

# def calc(op, first, second)
#   if op == "+"
#     puts (first + second)
#   elsif op == "-"
#     puts (first - second)
#   elsif op == "/"
#     puts (first / second)
#   elsif op == "*"
#     puts (first * second)
#   else
#     puts "Invalid"
#   end
# end

# puts "Enter First number: "
# first = gets.chomp().to_f
# puts "Enter Second number: "
# second = gets.chomp().to_f
# puts "Enter Operand: "
# op = gets.chomp()

# calc(op, first, second)

# def getDay(day)
#   day_name = ""

#   case day
#   when "mon"
#     day_name = "Monday"
#   when "tue"
#     day_name = "Tuesday"
#   when "wed"
#     day_name = "Wednesday"
#   when "thu"
#     day_name = "Thursday"
#   when "fri"
#     day_name = "Friday"
#   else
#     day_name = "Invalid"
#   end

#   return day_name
# end

# puts(getDay("tue1"))

# secret_word = "password"
# guess_word = ""
# guess_count = 0
# guess_limit = 3
# out_of_guesses = false

# while guess_count < guess_limit
#   guess_word = gets.chomp()
#   if (secret_word == guess_word)
#     puts ("You won")
#     guess_count = guess_limit
#   end
#   guess_count += 1
# end

# puts ("Game End!")

# def pow(base, exp)
#   result = 1
#   exp.times do
#     result = result * base
#   end
#   return result
# end

# puts(pow(2, 3))

# file = File.open("lines.txt", "r")
# puts file.read
# file.close()

# friends = []

# begin
#   num = 10 / 5
#   friends["dog"]
# rescue ZeroDivisionError
#   puts "Zero Error"
# rescue TypeError => exception
#   puts exception
# end

# class Book
#   attr_accessor :title, :author, :pages

#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end
# end

# book1 = Book.new("Ruby", "Satya", 600)
# book2 = Book.new("Ocaml", "Prakash", 504)

# puts book2.author

# class Question
#   attr_accessor :prompt, :answer

#   def initialize(prompt, answer)
#     @prompt = prompt
#     @answer = answer
#   end
# end

# p1 = "What color are apples?\na)Red\nb)Orange\nc)Purple\nd)Green"
# p2 = "What color are Guavas?\na)Red\nb)Orange\nc)Purple\nd)Green"
# p3 = "What color are Oranges?\na)Red\nb)Orange\nc)Purple\nd)Green"

# questions = [
#   Question.new(p1, "a"),
#   Question.new(p2, "d"),
#   Question.new(p3, "b"),
# ]

# def run_tests(questions)
#   answer = ""
#   score = 0
#   for question in questions
#     puts(question.prompt)
#     answer = gets.chomp()
#     if answer == question.answer
#       score += 1
#     end
#   end
#   puts ("Your Score is " + score.to_s + "/" + questions.length.to_s)
# end

# run_tests(questions)

# class Chef
#   def make_chicken
#     puts "The Chef makes chicken"
#   end

#   def make_salad
#     puts "The Chef makes salad"
#   end

#   def make_pizza
#     puts "The Chef makes pizza"
#   end
# end

# class Italian_Chef < Chef
#   def special
#     puts "Special Italian Food"
#   end
# end

# chef1 = Italian_Chef.new()
# chef1.special()
