# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventUpsertBatchParams < HubspotSDK::Models::Marketing::BatchInputMarketingEventCreateRequestParams
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MarketingEventUpsertBatchParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig do
          override.returns({ request_options: HubspotSDK::RequestOptions })
        end
        def to_hash
        end
      end
    end
  end
end
