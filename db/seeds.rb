

  Citizen.create(:name => "Hilary", :email => "Hilary@mail.com", :password_digest => "dog!!")
  Citizen.create(:name => "Mark", :email => "mark@mail.com", :password_digest => "dog!!" )
  Citizen.create(:name => "Chad", :email => "Chad@mail.com", :password_digest => "dog!!" )

  Action.create(:date => "Sunday", :title => "work with immigrant in the city", :description => "finding work", :citizen_id => "1")

  Action.create(:date => "Monday", :title => "Called Senators", :description => "around that damn wall", :citizen_id => "2")
  Action.create(:date => "Wednesday", :title => "Gave money", :description => "To someone new running for office", :citizen_id => "3")
  Action.create(:date => "Saturday", :title => "Self-care", :description => "Taking care of myself for the long haul.", :citizen_id => "2")

