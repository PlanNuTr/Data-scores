require 'csv'
students = CSV.read('data.csv')

CSV.foreach('data.csv') do |row|
end

name_array = Array.new
for na in 1..5
	students[na][0].downcase!
	name_array.push(students[na][0])
end

score_array = Array.new
for sc in 1..5
	score_array.push(students[sc][1])
end

color_array = Array.new
for cl in 1..5
	color_array.push(students[cl][2])
end

#Find highest & lowest score
min = score_array.min
max = score_array.max

for i in 1..5
	if min == students[i][1]
		min_name = students[i][0]
	end

	if max == students[i][1]
		max_name = students[i][0]
	end
end


#Find mean of scores
score_array.map! {|i| i.to_f }
avg_sc = score_array.inject(0, &:+) / 5

#Fav Color

def most_common_value(a)
  a.group_by do |v|
    v
  end.values.max_by(&:size).first
end

def least_common_value(a)
  a.group_by do |v|
    v
  end.values.min_by(&:size).first
end

fav_color = most_common_value(color_array)
least_color = least_common_value(color_array)

#Names
names_rev = name_array.map { |x| x.reverse.split(' ').map(&:capitalize).join(' ').reverse}

#Print
puts "#{max_name} has the highest score and #{min_name} has the lowest score."
puts "Average score is #{avg_sc}."
puts "The most popular color is #{fav_color} and te least popular is #{least_color}."
puts "List of students' names:"
puts names_rev