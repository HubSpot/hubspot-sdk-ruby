# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class SubscriberEmailResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::SubscriberEmailResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The email of the contact
        sig { returns(String) }
        attr_accessor :email

        # The internal ID of the contact
        sig { returns(Integer) }
        attr_accessor :vid

        sig { params(email: String, vid: Integer).returns(T.attached_class) }
        def self.new(
          # The email of the contact
          email:,
          # The internal ID of the contact
          vid:
        )
        end

        sig { override.returns({ email: String, vid: Integer }) }
        def to_hash
        end
      end
    end
  end
end
