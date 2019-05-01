require 'pry'

def get_first_name_of_season_winner(data, season)
data_set = {}
data_set = data[season]
name_reformated = ""

data_set.each do |data_contestant |

  if data_contestant["status"] == "Winner"

name_reformated = data_contestant["name"].split(" ")
return name_reformated[0]

end
end
end

def get_contestant_name(data, occupation)
data.each do |key_season, data_contestants |

  data_contestants.each do |contestant |

    if contestant["occupation"] == occupation
return contestant["name"]
end
end
end
end

def count_contestants_by_hometown(data, hometown)
count = 0
data.each do |key_season, data_contestants |

  data_contestants.each do |contestant |

    if contestant["hometown"] == hometown
count += 1
end
end
end
return count
end

def get_occupation(data, hometown)

data.each do |key_season, data_contestants |

  data_contestants.each do |contestant |

    if contestant["hometown"] == hometown
return contestant["occupation"]
end
end
end
return count
end

def get_average_age_for_season(data, season)
data_set = {}
data_set = data[season]
sum_ages = 0.0
avg_age = 0.0
num_contestants = 0.0

data_set.each do |data_contestant |
    num_contestants += 1.0
  sum_ages += data_contestant["age"].to_f
end

avg_age = (sum_ages / num_contestants)
return avg_age.round
end