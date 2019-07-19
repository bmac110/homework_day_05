def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  return shop[:admin][:total_cash] += cash

end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold)
  return shop[:admin][:pets_sold] += sold
end

def stock_count(shop)
  return shop[:pets].size
end

def pets_by_breed(shop, breed)
  types = shop[:pets]
  breed_array = []
  for type in types
    if type[:breed] == breed
      breed_array.push(type)
    end
  end
  return breed_array
end

def find_pet_by_name(shop, name)
  for pets in shop[:pets]
    if pets[:name] == name
      return pets
    end
  end
  return nil
end

def remove_pet_by_name(shop, name)
  types = shop[:pets]
  for type in types
    if type[:name] == name
      types.delete(type)
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  return shop[:pets] << new_pet
end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].size
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  customer[:pets].size()
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  elsif customer[:cash] < new_pet[:price]
    return false
  end
end
