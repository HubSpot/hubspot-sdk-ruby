# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class ContactReference < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::ContactReference,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Unique identifier for the contact.
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # Unique identifier for the contact.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
