require "pry"

mini_data = {
  "season 10":[
      {
         "name":"Tessa Horst",
         "age":"26",
         "hometown":"San Francisco, CA",
         "occupation":"Social Worker",
         "status":"Winner"
       },
       {
            "name":"Tiffany Forester",
            "age":"27",
            "hometown":"St. Louis Park, MN",
            "occupation":"singer",
            "status":"Week 1"
      }
      ]
    }

def get_first_name_of_season_winner(data, season)
  # code here
  #d ata[:"season 10"][0][:status] -> "Winner"
  data[season].each do | contestant |
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do | season, array |
    array.each do | info |
      info.each do |k,v|
          if v == occupation
            return info["name"]
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do | season, array |
    array.each do | info |
      info.each do |k,v|
          if v == hometown
            counter +=1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do | season, array |
    array.each do | info |
      info.each do |k,v|
          if v == hometown
            return info["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  age_sum = 0
  data[season].each do | info |
    info.each do |k, v|
      age_sum += info["age"].to_f
      count += 1
    end
  end
  return (age_sum/count).round
end
