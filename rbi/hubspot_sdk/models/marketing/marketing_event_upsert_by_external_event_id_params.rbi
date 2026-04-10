# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class MarketingEventUpsertByExternalEventIDParams < HubSpotSDK::Models::Marketing::MarketingEventCreateRequestParams
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::MarketingEventUpsertByExternalEventIDParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :path_external_event_id

        sig do
          params(
            path_external_event_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(path_external_event_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              path_external_event_id: String,
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
