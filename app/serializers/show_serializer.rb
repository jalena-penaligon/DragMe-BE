class ShowSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :description, :poster_url, :event_url, :venue
end
