require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each_pair do |key, value|
      value.each do |attribute, names|
        names.each do |name|
          binding.pry
          if new_hash[name].nil?
            new_hash[name] = {}
          end
        end
      end
  end
end
