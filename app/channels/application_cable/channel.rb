module ApplicationCable
  class Channel < ActionCable::Channel::Base
    identified_by :uuid

    def connect
      self.uuid = SecureRandom.urlsafe_base64
    end
  end
end
