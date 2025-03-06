# Seasoned Full Stack Developer with 7+ years of experience seeking to leverage expertise in Ruby to drive enhancements and maintain critical business systems. Bringing a proven track record of optimizing from database to user interface. Quick in addressing emerging requests and system exceptions while consistently delivering robust, scalable solutions. Ready to contribute immediately to your team's success and propel business growth. Technical Skills •	Windows: system administration and Microsoft Office suite •	Web Development: JavaScript, jQuery, HTML, CSS •	Databases: Oracle, Microsoft SQL, MongoDB, PostGreSQL, MySQL •	Application Monitoring: AppDynamics, RabbitMQ •	Scripting: PowerShell, Ruby, Bash, PHP •	Containerization with docker Experience Bravo Wellness, Cleveland, Ohio Software Engineer & Product Owner 2018 – Present •	Led software projects that enhanced operational efficiency and security for clients while ensuring alignment with business goals. •	Collaborated with cross-functional teams, including developers, to define product requirements, prioritize features, and ensure timely delivery of high-quality software solutions. •	Utilized user feedback and market research to inform backlog prioritization. •	Managed project timelines and Agile ceremonies, while participating in sprint planning and retrospectives, to drive continuous improvement in team performance. •	Utilized Jira and Confluence for project tracking, sprint planning, and documentation. Verizon, Solon, Ohio Application Support 2017 – 2018 •	Developed a web application to automate the recycling of GPS units, improving process efficiency and minimizing manual errors. •	Monitored system stability using ITIL best practices to maintain peak performance of customer-facing websites, ensuring reliability and security. •	Collaborated with engineering, development, and support teams to resolve customer issues efficiently, often requiring deep analysis of logs and error messages. Windstream, Twinsburg, Ohio Analyst II 2014 – 2017 •	Facilitated the onboarding of Xerox as a new call center vendor, managing database setups and security protocols, ensuring data integrity and secure access. •	Developed a backup ticketing system to handle hundreds of tickets per hour during primary system downtimes, prioritizing critical incidents. •	Maintained a website displaying productivity metrics for use by call center management, integrating secure data handling practices. Aquent LLC, Eastlake, Ohio Streaming Producer 2006 – 2014 •	Managed live video streams within Rockwell Automation, ensuring secure and reliable delivery of content during high-stakes events. •	Coordinated with production crews and executives, adhering to customer service level agreements, with a focus on secure data transmission. •	Developed and maintained a webcast archive website, serving thousands of live video streams annually, with secure access controls. Education Kent State University, Kent, Ohio Bachelor of Science - Electronic Media Production August 1999 - May 2004 Certifications •	Certified Scrum Product Owner •	Microsoft Certified Professional - Windows XP Pro •	CompTIA A+ •	Net+


# https://stackoverflow.com/questions/1740046/whats-the-difference-between-a-proc-and-a-lambda-in-ruby
# https://www.hackerrank.com/challenges/ruby-lambdas/problem
# Write a lambda which takes an integer and square it
square      = lambda {|a| a**2 }

# Write a lambda which takes an integer and increment it by 1
plus_one    = lambda { |x| x + 1 }

# Write a lambda which takes an integer and multiply it by 2
into_2      = lambda { |x| x * 2 }

# Write a lambda which takes two integers and adds them
adder       = lambda { |a, b| a + b }

# Write a lambda which takes a hash and returns an array of hash values
values_only = ->(hash) { hash.values }



input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e
































# https://www.hackerrank.com/challenges/ruby-methods-keyword-arguments/problem
def convert_temp(temperature, input_scale:, output_scale: :celsius)
    {
        [:celsius, :fahrenheit] => ->(t) { (t * 9.0/5.0) + 32.0 },
        [:celsius, :kelvin] => ->(t) { t + 273.15 },
        [:fahrenheit, :celsius] => ->(t) { (t - 32.0) * 5.0/9.0 },
        [:fahrenheit, :kelvin] => ->(t) { ((t - 32.0) * 5.0/9.0) + 273.15 },
        [:kelvin, :celsius] => ->(t) { t - 273.15 },
        [:kelvin, :fahrenheit] => ->(t) { (t - 273.15) * 9.0/5.0 + 32.0 },
    }[[input_scale.to_sym, output_scale.to_sym]].call(temperature)
end









# https://www.hackerrank.com/challenges/ruby-methods-arguments/problem
def take(arr, skip=1)
  arr.shift(skip)
  arr
end













# https://www.hackerrank.com/challenges/ruby-methods-introduction/problem
def prime?(number)
  return false if number <= 1
  (2..Math.sqrt(number)).each do |i|
    return false if number % i == 0
  end
  true
end






























# https://www.hackerrank.com/challenges/ruby-strings-methods-i/problem
def process_text(text_array)
  text_array.map(&:strip).join(" ")
end

def process_text(text_array)
  stripped_array = []
  text_array.each do |string|
    stripped_array << string.strip
  end
  stripped_array.join(" ")
end



# works unaccepted
def serial_average(sn)
  sn_letters = sn[0,4]
  sn_xx = sn[4,4].to_f
  sn_yy = sn[-5,5].to_f
  return "#{sn_letters}" + "#{(sn_xx + sn_yy)/2}"
end


# accepted
def serial_average(str)
  num1, num2, num3 = str.split("-")
  avg = ((num2.to_f+num3.to_f)/2).round(2)
  ans = "#{num1}-#{avg}"
  return ans
end

# https://www.hackerrank.com/challenges/ruby-strings-encoding/problem
# In this challenge, we practice setting the encoding information 
# for some string of text using Ruby's Encoding methods. Write a
# function named transcode which takes a  encoded string as a
# parameter, converts it to an UTF8 encoded string, and returns the result.
def transcode(string8859)
  return string8859.force_encoding(Encoding::UTF_8)
end

def encode_to_8859(string)
  return string.force_encoding(Encoding::ISO_8859_1)
end
transcode(encode_to_8859("Bhavana"))

# https://www.hackerrank.com/challenges/ruby-tutorial-each/problem
def scoring(array)
    # iterate through each of the element in array using *each* and call update_score on it
    
	array.each do |user|
	    user.update_score
    end
end





























# https://www.hackerrank.com/challenges/ruby-tutorial-unless/problem
def scoring(array)
  # update_score of every user in the array unless the user is admin
    array.each do |user|
      user.update_score unless user.is_admin? 
    end
    
end
































# https://www.hackerrank.com/challenges/ruby-infinite-loop/problem
loop do
    coder.practice
    break if coder.oh_one?
end
















# https://www.hackerrank.com/challenges/ruby-until/problem
until coder.oh_one? 
    coder.practice
end

# or the beautiful one-liner
coder.practice until coder.oh_one? 












# https://www.hackerrank.com/challenges/ruby-array-initialization/problem
array = []

array_1 = [nil]

array_2 = [10,10]















# https://www.hackerrank.com/challenges/ruby-array-index-i
def element_at(arr, index)
    # return the element of the Array variable `arr` at the position `index`
    arr.at(index) # or
    # arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
    arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
     arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
    # return `length` elements of the Array variable `arr` starting from `start_pos`
     arr[start_pos,length]
end







# https://www.hackerrank.com/challenges/ruby-array-index-ii/problem?isFullScreen=true
def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    arr[-index]
end

def first_element(arr)
    # return the first element of the array
    arr.first
end

def last_element(arr)
    # return the last element of the array
    arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    arr.drop(n)
end





















# https://www.hackerrank.com/challenges/ruby-array-addition/problem?isFullScreen=true
def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, 5,6)
end




















# https://www.hackerrank.com/challenges/ruby-array-deletion/problem?isFullScreen=true
def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    arr.pop
end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    arr.shift
end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    arr.delete_at(index)
end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)
end



























# https://www.hackerrank.com/challenges/ruby-array-selection/problem?isFullScreen=true
def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
    arr.select {|a| a.odd?}
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
    arr.reject {|a| a % 3 == 0 }
end

def delete_arr(arr)
  # delete all negative elements
    arr.delete_if {|a| a < 0}
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
    arr.keep_if {|a| a > 2}
end














# https://www.hackerrank.com/challenges/ruby-hash-method-each/problem?isFullScreen=true
def iter_hash(hash)
    # your code here
    hash.each do |key, value| 
        puts key
        puts value
    end
end


# https://www.hackerrank.com/challenges/ruby-methods-variable-arguments/problem?isFullScreen=trueYour code here
#  reduce ? 
def full_name(first, *rest)
    rest.reduce(first) { |o, x| o + ' ' + x }
end















