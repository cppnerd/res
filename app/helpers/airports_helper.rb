module AirportsHelper

  # Group items in [ [Country[ [..a1..],[..a2..] ..]]]]
  def airport_list_by_country(opts={})
    grouped_options = []
    Airport.find(:all, opts).group_by{|airport| airport.country.name}.each do |country,airports|
      group_items = []
      country_items = []
      group_items.push country # Only add each country once
          airports.each do |a|
          country_items.push ["#{a.code} - #{a.name}","#{a.id}"]
      end
      group_items.push country_items
      grouped_options.push group_items
    end
    grouped_options
  end
end
