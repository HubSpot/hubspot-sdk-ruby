# typed: strong

module HubSpotSDK
  module Models
    module Events
      class VisibleExternalEventTypeNames < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::VisibleExternalEventTypeNames,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # List of event type names.
        sig { returns(T::Array[String]) }
        attr_accessor :event_types

        sig { params(event_types: T::Array[String]).returns(T.attached_class) }
        def self.new(
          # List of event type names.
          event_types:
        )
        end

        sig { override.returns({ event_types: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
