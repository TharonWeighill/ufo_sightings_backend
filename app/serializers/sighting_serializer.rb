class SightingSerializer < ActiveModel::Serializer
    attributes :city, :state, :country, :comments, :date_posted, :latitude, :longitutde
  
    def created_date
      self.object && self.object.created_at.strftime('%d/%m/%Y')
    end
end