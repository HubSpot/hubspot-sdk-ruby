# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      module Webhooks
        class BatchUpdateSubscriptionsParams < HubspotSDK::Models::Webhooks::BatchInputSubscriptionBatchUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Webhooks::Webhooks::BatchUpdateSubscriptionsParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :app_id

          sig do
            params(
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(app_id:, request_options: {})
          end

          sig do
            override.returns(
              { app_id: Integer, request_options: HubspotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
