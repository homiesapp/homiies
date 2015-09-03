json.array!(@invitations) do |invitation|
  json.extract! invitation, :id, :user_id, :homiie_id, :event_id, :attending
  json.url invitation_url(invitation, format: :json)
end
