# typed: strong

module HubspotSDK
  module Models
    module Events
      class SendCreateEventDefinitionPropertyParams < HubspotSDK::Models::Events::ExternalBehavioralEventPropertyCreate
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::SendCreateEventDefinitionPropertyParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :event_name

        sig do
          params(
            event_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(event_name:, request_options: {})
        end

        sig do
          override.returns(
            { event_name: String, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
