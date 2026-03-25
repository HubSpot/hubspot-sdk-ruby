# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EventUpsertByExternalEventIDParams < HubspotSDK::Models::Marketing::MarketingEventCreateRequestParams
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EventUpsertByExternalEventIDParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :path_external_event_id

        sig do
          params(
            path_external_event_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(path_external_event_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              path_external_event_id: String,
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
