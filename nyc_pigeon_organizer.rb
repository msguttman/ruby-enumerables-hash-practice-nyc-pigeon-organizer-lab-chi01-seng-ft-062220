def nyc_pigeon_organizer(data)
  # write your code here!
  
  #this will store the new reversed hash
  new_pigeon_data = Hash.new

  #start iterating over the current hash
  count = 0
  while count < data.keys.length

      count1 = 0
      while count1 < data[data.keys[count]].keys.length

        val_count = 0
        while val_count < data[data.keys[count]].values[count1].length do
          
          #for each terminal name, get the info for this chain.
          pige_name = data[data.keys[count]].values[count1][val_count].to_s
          new_pige_atr = data.keys[count].to_sym
          new_pige_value = data[data.keys[count]].keys[count1].to_s

          #if the name has already been added, add the new data, otherwise add the new data to this name
          if new_pigeon_data.include? pige_name

            if new_pigeon_data[pige_name].include? new_pige_atr
              
              new_values = new_pigeon_data[pige_name].values
              new_values << new_pige_value
              new_pigeon_data[pige_name][new_pige_atr] = new_values.flatten
            else
                new_pigeon_data[pige_name][new_pige_atr] = new_pige_value
           end

          else
            new_pigeon_data[pige_name] = {
              new_pige_atr => new_pige_value
            }
          end

          val_count += 1
        end

        count1 += 1
      end
      
    count += 1
  end
  
  new_pigeon_data
  
end