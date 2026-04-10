# typed: strong

module HubSpotSDK
  module Models
    module Events
      class DefinitionUpdatePropertyParams < HubSpotSDK::Models::Events::ExternalBehavioralEventPropertyDefinitionPatch
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::DefinitionUpdatePropertyParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :event_name

        sig { returns(String) }
        attr_accessor :property_name

        sig do
          params(
            event_name: String,
            property_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(event_name:, property_name:, request_options: {})
        end

        sig do
          override.returns(
            {
              event_name: String,
              property_name: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
