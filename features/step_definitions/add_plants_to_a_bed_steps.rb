def scan_to_a s
  res = []
  res = s.scan(/\w+/)
  res
end


Given /^A bed with name "([^"]*)" and field state "([^"]*)"$/ do |name, field|
  @name = name
  create_new_bed(name, field)
end

When /^I add "([^"]*)"$/ do |plant_names|
  @plant_names = plant_names
  add_plants_to_bed(@name, scan_to_a(plant_names))

end

Then /^Gurke adds the plants to the bed$/ do
  show_bed_details(@name)
  @plant_names.each do |pn|
    response.should contain pn
  end
end
