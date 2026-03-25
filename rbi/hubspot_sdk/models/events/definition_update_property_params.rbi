# typed: strong

module HubspotSDK
  module Models
    module Events
      class DefinitionUpdatePropertyParams < HubspotSDK::Models::Events::ExternalBehavioralEventPropertyDefinitionPatch
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::DefinitionUpdatePropertyParams,
              HubspotSDK::Internal::AnyHash
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(event_name:, property_name:, request_options: {})
        end

        sig do
          override.returns(
            {
              event_name: String,
              property_name: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
