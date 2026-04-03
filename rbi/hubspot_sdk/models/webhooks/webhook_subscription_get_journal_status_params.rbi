# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class WebhookSubscriptionGetJournalStatusParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::WebhookSubscriptionGetJournalStatusParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :status_id

        sig do
          params(
            status_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(status_id:, request_options: {})
        end

        sig do
          override.returns(
            { status_id: String, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
