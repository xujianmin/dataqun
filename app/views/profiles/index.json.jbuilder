json.array!(@profiles) do |profile|
  json.extract! profile, :id, :ref, :name, :gender, :id_num, :id_type, :occupation, :employer, :position, :country, :province, :city, :address, :post_code, :cellphone, :telphone
  json.url profile_url(profile, format: :json)
end
