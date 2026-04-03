# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class WebhookSubscriptionGetJournalNextByOffsetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::WebhookSubscriptionGetJournalNextByOffsetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :offset

        sig { returns(T.nilable(Integer)) }
        attr_reader :install_portal_id

        sig { params(install_portal_id: Integer).void }
        attr_writer :install_portal_id

        sig do
          params(
            offset: String,
            install_portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(offset:, install_portal_id: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              offset: String,
              install_portal_id: Integer,
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
