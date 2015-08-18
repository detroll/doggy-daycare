json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :owner_id, :breed_id, :dob, :allergies, :vet_name, :vet_phone, :in_daycare
  json.url dog_url(dog, format: :json)
end
