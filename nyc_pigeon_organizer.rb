require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each_pair do |key, value|
      value.each do |attribute, name|
        binding.pry
      end
  end
end
