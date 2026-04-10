# typed: strong

module HubSpotSDK
  module Models
    module Events
      class ExternalPrimaryObjectResolutionRule < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::ExternalPrimaryObjectResolutionRule,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :event_property_name

        sig { returns(String) }
        attr_accessor :target_object_property_name

        sig do
          params(
            event_property_name: String,
            target_object_property_name: String
          ).returns(T.attached_class)
        end
        def self.new(event_property_name:, target_object_property_name:)
        end

        sig do
          override.returns(
            { event_property_name: String, target_object_property_name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
