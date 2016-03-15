def acct_groups

  hash = {}
  puts "Who is in the class? Separate each person with a comma, but do not hit enter between people (eg. Aarthi Gurusami, Abid Ramay, Adam Zmudzinski)"
  everyone = gets.chomp
  people = everyone.split(', ')
  puts "There are a total of #{people.length} people in the class. About how many people do you want in each group?"
  group_max = gets.chomp.to_i
  puts "What is the minimum amount of people you want in each group?"
  group_min = gets.chomp.to_i

  if (people.length % group_max) < group_min
    x = (people.length/group_max)
  else
    x = ((people.length)/(group_max))+ 1
  end

  loop do
    people.each do |y|
      hash[y] = rand(1..x)
    end
    ary = []
    (1..x).each do |i|
      ary << hash.values.count(i)
    end
    $new_ary = ary.sort
    break if $new_ary[0] > group_min && $new_ary[-1] < (group_max + 2)
  end
  puts "There are #{$new_ary.length} groups and no more than #{$new_ary[-1]} people per group, and no less than #{$new_ary[0]} people per group."

  group_hash = {}

  (1..x).each do |i|
    group_ary = []
    hash.each do |k,v|
      if v == i
        group_ary << k
      end
    end
    group_hash[i] = group_ary
    group_string = group_ary.join(', ')
    p "Group #{i} : #{group_string}"
  end
end

list = ["person-1","person-2","person-3","person-4","person-5"]

list2 = ["person-1","person-2","person-3","person-4","person-5","person-6","person-7"]

# create_groups(list)
acct_groups