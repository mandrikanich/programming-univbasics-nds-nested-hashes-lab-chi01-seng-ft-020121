require "pry"
# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

DON_G = { name:  "Don Gately", occupation: "Live-in Staff" }
JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" }
PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" }
KATE_G = { name:  "Kate Gompert", occupation: "None" }
BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }

def assembled_aoh
  # Build an array that contains (or, "nests") the constants into a single
  # Array. Ruby constants are denoted by ALL_CAPS
  constants = [DON_G, JOELLE_VD, PAT_M, KATE_G, BRUCE_G]
end

def literal_aoh
  
  # Using Array literal syntax only, build a nested array that uses the data in
  # held in the constants
   
   [{ name:  "Don Gately", occupation: "Live-in Staff" }, { name:  "Joelle van Dyne", occupation: "Radio Personality" },{ name:  "Pat Monteseian", occupation: "Staff" },{ name:  "Kate Gompert", occupation: "None" }, { name:  "Bruce Green", occupation: "Fan of Mildred" }]
   
  #data = [{DON_G, name: "Don Gately", occupation: "Live-in Staff"},{JOELLE_VD, name:  "Joelle van Dyne", occupation: "Radio Personality"}, {PAT_M, name:  "Pat Monteseian", occupation: "Staff"}, {KATE_G, name:  "Kate Gompert", occupation: "None"}, {BRUCE_G, name:  "Bruce Green", occupation: "Fan of Mildred"}]
end

def aoh_lookup(aoh, row, key)
  #  expect(aoh_lookup(assembled_aoh, 2, :name)).to eq("Pat Monteseian")
  aoh[row][key]
  #binding.pry
end

def aoh_update(aoh, row, key, new_value)
  aoh[row][key]=new_value
  #binding.pry
  # Update the AoH data at row and key to have the value of new_value
  # Return the updated AoH
  #expect(result[1][:name]).to eq("Joelle van Dyne (PGOAT)"
  aoh
end
