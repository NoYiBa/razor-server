require 'pathname'

Fabricator(:image, :class_name => Razor::Data::Image) do
  name      { Faker::Commerce.product_name + " #{Fabricate.sequence}" }
  image_url 'file:///dev/null'
end


Fabricator(:policy, :class_name => Razor::Data::Policy) do
  name             { Faker::Commerce.product_name + " #{Fabricate.sequence}" }
  enabled          true
  installer_name   'some_os'
  hostname_pattern 'host${id}.example.org'
  root_password    { Faker::Lorem.word }
  line_number      { Fabricate.sequence(:razor_data_policy_line_number, 100) }

  image
end