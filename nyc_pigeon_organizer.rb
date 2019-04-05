require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |category, stats|
    stats.each do |info, names|
      names.each do |name|
        binding.pry
          (new_hash[name][category] ||= []) << info.to_s
        end
    end
    end
  end
end
