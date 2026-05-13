class BoutiqueInventory
  def initialize(items)
    @items = items

    #   {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  end

  def item_names
    @items.map { | item | item[:name] }.sort
  end

  def cheap
    @items
      .select { | item | item[:price] < 30 }
      .map { | item | { price: item[:price] , name: item[:name], quantity_by_size: item[:quantity_by_size] }}
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.find { |item| item[:name] == name }[:quantity_by_size]
  end

  def total_stock
    #@items.sum { | item | item[:quantity_by_size].values.sum }
    @items.select { |item| item[:quantity_by_size].values.sum > 0 }
      .sum { |item| item[:quantity_by_size].values.sum }
  end

  private
  attr_reader :items
end
