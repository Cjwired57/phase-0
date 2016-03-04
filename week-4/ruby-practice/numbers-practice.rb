def get_grade(percentage)
  if percentage >= 90 && percentage > 80
    puts 'A'
  end
  if percentage >= 80 && percentage < 90
    puts 'B'
  end
  if percentage >= 70 && percentage < 80
    puts 'C'
  end
  if percentage >= 60 && percentage < 70
    puts 'D'
  end
  if percentage >= 0 && percentage < 60
    puts 'F'
  end
end

get_grade(55)