# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class SubscriberEmailResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::SubscriberEmailResponse,
              HubSpotSDK::Internal::AnyHash
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
