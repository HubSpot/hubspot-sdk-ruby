# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class WebhookGetEarliestLocalJournalEntryParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::WebhookGetEarliestLocalJournalEntryParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The ID of the portal for which to retrieve the earliest journal entry. This
        # parameter is optional and should be an integer.
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
          # The ID of the portal for which to retrieve the earliest journal entry. This
          # parameter is optional and should be an integer.
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
