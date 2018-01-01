require 'pry'

# your code goes here
def begins_with_r(array)
  new_array = array.select do |element|
    element[0] == "r"
  end
  new_array == array
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  unique = array.uniq
  counter = []
  i = 0
  unique.each do |element|
    instances = array.count(element)
    counter.push(element)
    counter[i][:count] = instances
    i += 1
  end
  counter
end

def merge_data(keys, data)
  new_data = []
  keys.each do |element|
    element.each do |key, value|
      if data[0].keys.include?(value)
        binding.pry
        new_hash = element.merge(data[0][value])
        new_data.push(new_hash)
      end
    end
  end
  new_data
end
