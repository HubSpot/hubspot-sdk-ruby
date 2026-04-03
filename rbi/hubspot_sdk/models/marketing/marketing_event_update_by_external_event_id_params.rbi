# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventUpdateByExternalEventIDParams < HubspotSDK::Models::Marketing::MarketingEventUpdateRequestParams
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventUpdateByExternalEventIDParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :external_event_id

        sig { returns(String) }
        attr_accessor :external_account_id

        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          external_event_id:,
          external_account_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              external_event_id: String,
              external_account_id: String,
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
