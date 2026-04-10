# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class WebhookDeletePortalSubscriptionsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::WebhookDeletePortalSubscriptionsParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig do
          params(
            portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(portal_id:, request_options: {})
        end

        sig do
          override.returns(
            { portal_id: Integer, request_options: HubSpotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
