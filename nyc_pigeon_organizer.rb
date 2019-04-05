require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each_pair do |key, value|
      value.each do |attribute, names|
        names.each do |name|
          #binding.pry
          if new_hash[name].nil?
            new_hash[name] = {}
          if new_hash[name][key].nil?
            new_hash[name][key] = []
          end
          new_hash[name][key] << attribute.to_s
          end
        end
      end
  end
  new_hash
end
