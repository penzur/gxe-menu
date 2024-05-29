# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#       end
Rails.application.config.after_initialize do
  # Create Menu
menu1 = Menu.create!(
  identifier: 'lunch-menu', label: 'Lunch Menu', state: 'active',
  start_date: Date.today, end_date: Date.today + 1.week
)

# Menu Sections
sections = %w[Appetizers Salads Sandwiches Burgers Pasta Desserts]
sections.each do |section_name|
  menu1.sections.create!(
    identifier: section_name.downcase.gsub(' ', '-'),
    label: section_name,
    description: section_name
  )
end

# Products (10 per section, 60 total)
sections = menu1.sections
sections.each do |section|
  10.times do |i|
    section.items.create!(
      identifier: "#{section.identifier}-item#{i + 1}",
      item_type: 'Product',
      label: "#{section.label} Item #{i + 1}",
      description: section.label,
      price: rand(5.99..19.99)
    )
  end
end

# Modifier Groups and Items (2 groups per section for half the products)
sections.each do |section|
  section.items.first(5).each do |product|
    2.times do |j|
      modifier_group = product.modifier_groups.create!(
        identifier: "#{product.identifier}-group#{j + 1}",
        label: "Modifier Group #{j + 1}",
        item: product,
        selection_required_min: 0,
        selection_required_max: 3
      )
      3.times do |k|
        component = section.items.create!( # Changed from .modifiers.create!
          item_type: 'Component', # New attribute
          identifier: "component-#{k + 1}",
          price: rand(5.99..19.99),
          label: "Component #{k + 1}",
          description: "#{modifier_group.label} Component #{k + 1}"
        )
        modifier_group.modifiers.create!(
          item: component,
          modifier_group:,
          display_order: k + 1,
          default_quantity: rand(1..5),
          price_override: rand(5.99..19.99)
        )
      end
    end
  end
end
end
