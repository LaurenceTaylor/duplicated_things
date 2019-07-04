def find_duplicates(things_array)
  # 1. Create variations array to store each variation of thing
  variations = []
  # 2. Create the duplicates array to store things already in the variations array
  duplicates = []
  # 3. Iterate through the things array
  things_array.each do |thing|
    # 4. Check the variations array, see if the thing is in there. If it is, add to the duplicates array.
    if variations.include?(thing)
      duplicates << thing
    else
      # 5. If it isn’t, we add it to the variations array
      variations << thing
    end
  end
  # 6. After iterating through the things array, we return the unique values of the duplicates array
  duplicates.uniq
end

# refactored

def find_duplicates_refactored(things_array)
  variations, duplicates = [], []

  things_array.each do |thing|
    variations.include?(thing) ? duplicates << thing : variations << thing
  end

  duplicates.uniq
end
