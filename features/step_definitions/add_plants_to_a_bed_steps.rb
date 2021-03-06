def scan_to_a s
  s.scan(/\w+/)
end

Given /^A bed with name "([^"]*)" and field state "([^"]*)"$/ do |name, field|
  @name = name
  create_new_bed(@garden.name, name, field)
end

When /^I add "([^"]*)"$/ do |plant_names|
  @plant_names = scan_to_a(plant_names)

  family = Factory.create(:family, name: "family_name")
  @plant_names.each do |plant_name|
    plant = Factory.create(:plant, name: plant_name, family: family)
  end
  add_plants_to_bed(@garden.name, @name, @plant_names)

end

Then /^Gurke adds the plants to the bed$/ do
  show_bed_details(@garden.name, @name)
  page_should_contain(@plant_names)
end
