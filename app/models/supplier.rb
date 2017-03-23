class Supplier < ApplicationRecord
		def self.search(search)
  where("supplier_name LIKE ?", "%#{search}%") 
end
end
