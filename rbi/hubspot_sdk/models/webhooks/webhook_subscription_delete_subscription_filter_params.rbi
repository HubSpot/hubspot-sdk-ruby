# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class WebhookSubscriptionDeleteSubscriptionFilterParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::WebhookSubscriptionDeleteSubscriptionFilterParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :filter_id

        sig do
          params(
            filter_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(filter_id:, request_options: {})
        end

        sig do
          override.returns(
            { filter_id: Integer, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
