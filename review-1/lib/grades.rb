def generate_scorecard(input)
  input = input.delete(' ')
  arr = input.split(',')
  totals = arr.each_with_object(Hash.new(0)) { |grade, hash| hash[grade] += 1 }
  
  return_arr = []
  
  totals.each do |grade, total| 
    return_arr.append("#{grade}: #{total}")
  end
  
  if return_arr.length == 1
    return return_arr.first
  else
    return return_arr.join('\n')
  end
end
