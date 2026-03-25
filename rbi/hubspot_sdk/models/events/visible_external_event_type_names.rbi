# typed: strong

module HubspotSDK
  module Models
    module Events
      class VisibleExternalEventTypeNames < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::VisibleExternalEventTypeNames,
              HubspotSDK::Internal::AnyHash
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
