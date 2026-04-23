# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class WebhookGetLatestJournalEntryParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::WebhookGetLatestJournalEntryParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The ID of the portal installation to filter the journal entries. It is an
        # integer value.
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
          # The ID of the portal installation to filter the journal entries. It is an
          # integer value.
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
