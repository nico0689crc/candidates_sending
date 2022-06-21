class PointOfContactFilter
  include ActiveModel::Model

  attr_accessor :query

  def call(current_entity)
    point_of_contacts = PointOfContact.all
    point_of_contacts = search(point_of_contacts)
    point_of_contacts
  end

  private

  def search(point_of_contacts)
    point_of_contacts = point_of_contacts.where('
      point_of_contacts.last_name LIKE :q', q: "%#{@query}%") if @query.present?
      point_of_contacts
  end
end
