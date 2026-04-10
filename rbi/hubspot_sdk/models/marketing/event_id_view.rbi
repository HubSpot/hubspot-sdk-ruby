# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EventIDView < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EventIDView,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Identifier of event.
        sig { returns(String) }
        attr_accessor :id

        # Time of event creation.
        sig { returns(Time) }
        attr_accessor :created

        sig { params(id: String, created: Time).returns(T.attached_class) }
        def self.new(
          # Identifier of event.
          id:,
          # Time of event creation.
          created:
        )
        end

        sig { override.returns({ id: String, created: Time }) }
        def to_hash
        end
      end
    end
  end
end
