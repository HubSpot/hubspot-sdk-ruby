# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class WebhookGetLatestLocalJournalEntryParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::WebhookGetLatestLocalJournalEntryParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An integer representing the ID of the portal to filter the webhook journal
        # entries.
        sig { returns(T.nilable(Integer)) }
        attr_reader :install_portal_id

        sig { params(install_portal_id: Integer).void }
        attr_writer :install_portal_id

        sig do
          params(
            install_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An integer representing the ID of the portal to filter the webhook journal
          # entries.
          install_portal_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              install_portal_id: Integer,
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
