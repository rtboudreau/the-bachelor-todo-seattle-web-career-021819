def get_first_name_of_season_winner(data, season)
  data[season].each do |x|
    x.each do |key, value|
      if x["status"] == "Winner"
        return x["name"].to_s.split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |x|
    if x["occupation"] == occupation
      return x["name"]
    end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant|
    contestant.each do |x|
      if x["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = []
  data[season].each do |x|
    age << x["age"].to_i
  end
  (age.inject(0.0) {|sum, el| sum + el} /age.size).round
end
