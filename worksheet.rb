
########################################################
# Step 1: Establish the layers

  # Write a list of the layers here
    # Ride data
    # DRIVER_ID
    # DATE
    # COST,
    # RIDER_ID
    # RATING

########################################################
# Step 2: Assign a data structure to each layer

  # Copy your list from above, and write what data structure each layer should have
  # HASH Ride data
    # NESTED HASH CONTAINING:
      # DRIVER_ID
      # DATE further nested HASH
      # COST
      # RIDER_ID
      # RATING
########################################################
# Step 3: Make the data structure!

    # Setup the data structure and manually write in data presented in rides.csv

ride_data = [
  {
    DRIVER_ID: "DR0004",
    DATE: {
      day: "3rd",
      month: "Feb",
      year: 2016
          },
    COST: 5,
    RIDER_ID: "RD0022",
    RATING: 5
  },
  {
    DRIVER_ID: "DR0001",
    DATE: {
      day: "3rd",
      month: "Feb",
      year: 2016
          },
    COST: 10,
    RIDER_ID: "RD0003",
    RATING: 3
  },
  {
    DRIVER_ID: "DR0002",
    DATE: {
      day: "3rd",
      month: "Feb",
      year: 2016
    },
    COST: 25,
    RIDER_ID: "RD0073",
    RATING: 5
  },
  {
    DRIVER_ID: "DR0001",
    DATE: {
      day: "3rd",
      month: "Feb",
      year: 2016
    },
    COST: 30,
    RIDER_ID: "RD0015",
    RATING: 4
  },
  {
    DRIVER_ID: "DR0003",
    DATE: {
      day: "4th",
      month: "Feb",
      year: 2016
    },
    COST: 5,
    RIDER_ID: "RD0066",
    RATING: 5
  },
  {
    DRIVER_ID: "DR0004",
    DATE: {
      day: "4th",
      month: "Feb",
      year: 2016
    },
    COST: 10,
    RIDER_ID: "RD0022",
    RATING: 4
  },
  {
    DRIVER_ID: "DR0002",
    DATE: {
      day: "4th",
      month: "Feb",
      year: 2016
    },
    COST: 15,
    RIDER_ID: "RD0013",
    RATING: 1
  },
  {
    DRIVER_ID: "DR0003",
    DATE: {
      day: "5th",
      month: "Feb",
      year: 2016
    },
    COST: 50,
    RIDER_ID: "RD0003",
    RATING: 2,
  },
  {
    DRIVER_ID: "DR0002",
    DATE: {
      day: "5th",
      month: "Feb",
      year: 2016
    },
    COST: 35,
    RIDER_ID: "RD0066",
    RATING: 3
  },
  {
    DRIVER_ID: "DR0004",
    DATE: {
      day: "5th",
      month: "Feb",
      year: 2016
    },
    COST: 20,
    RIDER_ID: "RD0073",
    RATING: 5,
  },
  {
    DRIVER_ID: "DR0001",
    DATE: {
      day: "5th",
      month: "Feb",
      year: 2016
    },
    COST: 45,
    RIDER_ID: "RD0003",
    RATING: 2
  }
]

########################################################
# Step 4: Total Drivers Earnings and Number of Rides

  # Use an iteration block to print driver's total rides and money made
# loop over ride_data array create new array or add ride costs to existing array
drivers = {}
ride_data.each do |driver|
  if (drivers[driver[:DRIVER_ID]] == nil)
      drivers[driver[:DRIVER_ID]] = []
  else
    drivers[driver[:DRIVER_ID]].push(driver[:COST])
  end
end
# loop over drivers hash to calculate driver earnings
drivers.each do |id, total|
  puts "Driver: #{id} earned $#{total.sum} from #{total.length} trips."
end
