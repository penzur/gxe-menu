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
  # Sample Menus
  menu1 = Menu.create!(identifier: 'lunch-menu', label: 'Lunch Menu', state: 'active', start_date: Date.today,
                       end_date: Date.today + 1.week)

  # Sample Menu Sections
  section1 = menu1.sections.create!(identifier: 'mains', label: 'Mains', description: 'Main dishes')
  section2 = menu1.sections.create!(identifier: 'sides', label: 'Sides', description: 'Add a delicious side')

  # Sample Items (Non-configurable)
  pizza = section1.items.create!(identifier: 'pepperoni-pizza', item_type: 'Product', label: 'Pepperoni Pizza',
                                 description: 'Delicious pepperoni pizza', price: 15.99)
  salad = section1.items.create!(identifier: 'garden-salad', item_type: 'Product', label: 'Garden Salad', description: 'Fresh and healthy salad',
                                 price: 8.99)

  # Sample Items (Configurable)
  burger = section2.items.create!(identifier: 'build-your-burger', item_type: 'Product', label: 'Build Your Burger',
                                  description: 'Build the burger of your dreams!', price: 12.99)

  # Sample Modifier Groups
  burger_toppings = burger.item_modifier_groups.create!(modifier_group: ModifierGroup.create!(identifier: 'toppings', label: 'Toppings',
                                                                                              selection_required_min: 0, selection_required_max: 5))
  burger_sauces = burger.item_modifier_groups.create!(modifier_group: ModifierGroup.create!(identifier: 'sauces', label: 'Sauces',
                                                                                            selection_required_min: 0, selection_required_max: 2))

  # Sample Modifiers
  burger_toppings.modifier_group.modifiers.create!(item: burger, display_order: 1, default_quantity: 0,
                                                   price_override: 0.50)
  burger_toppings.modifier_group.modifiers.create!(item: burger, display_order: 2, default_quantity: 0,
                                                   price_override: 0.50)
  burger_toppings.modifier_group.modifiers.create!(item: burger, display_order: 3, default_quantity: 0,
                                                   price_override: 0.75)
  burger_toppings.modifier_group.modifiers.create!(item: burger, display_order: 4, default_quantity: 0,
                                                   price_override: 1.00)

  burger_sauces.modifier_group.modifiers.create!(item: burger, display_order: 1, default_quantity: 0,
                                                 price_override: 0.00)
  burger_sauces.modifier_group.modifiers.create!(item: burger, display_order: 2, default_quantity: 0,
                                                 price_override: 0.00)
  burger_sauces.modifier_group.modifiers.create!(item: burger, display_order: 3, default_quantity: 0,
                                                 price_override: 0.50)
end
