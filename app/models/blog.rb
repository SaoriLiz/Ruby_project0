class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1} #zero is goin to be map to draft 
	extend FriendlyId
  	friendly_id :title, use: :slugged

  	validates_presence_of :title, :body #valida que no se cree un blog sin que tenga 'title' o 'body'
end
