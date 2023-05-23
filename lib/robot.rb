def return_to_origin?(sequence)
  coordinates = [0, 0]
  direction = 0
  # 0 = facing forward
  # 1 = facing right
  # 2 = facing back
  # 3 = facing left

  sequence.chars.each do |move|
    if move == "G"
      coordinates = update_coordinates(direction, coordinates)
    else
      direction = update_direction(direction, move)
    end
  end

  if coordinates == [0, 0]
    return true
  else
    return false
  end
end

def update_coordinates(direction, coordinates)
  if direction == 0
    coordinates[1] += 1
  elsif direction == 1
    coordinates[0] += 1
  elsif direction == 2
    coordinates[1] -= 1
  elsif direction == 3
    coordinates[0] -= 1
  end
  return coordinates
end

def update_direction(direction, move)
  if direction == 3 && move == 'R'
    direction = 0
  elsif direction == 0 && move == 'L'
    direction = 3
  elsif move == 'R'
    direction += 1
  elsif move == 'L'
    direction -= 1
  end
  return direction
end