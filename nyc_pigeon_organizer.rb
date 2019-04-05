require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each_pair do |key, value|
      value.each_pair do |attribute, names|
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

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

puts nyc_pigeon_organizer(pigeon_data)
