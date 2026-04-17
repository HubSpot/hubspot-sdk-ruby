# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class WebhookGetJournalBatchFromOffsetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::WebhookGetJournalBatchFromOffsetParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :offset

        sig { returns(Integer) }
        attr_accessor :count

        # The ID of the portal installation to filter the webhook journal entries. This
        # parameter is optional and is used to specify which portal's data to retrieve.
        sig { returns(T.nilable(Integer)) }
        attr_reader :install_portal_id

        sig { params(install_portal_id: Integer).void }
        attr_writer :install_portal_id

        sig do
          params(
            offset: String,
            count: Integer,
            install_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          offset:,
          count:,
          # The ID of the portal installation to filter the webhook journal entries. This
          # parameter is optional and is used to specify which portal's data to retrieve.
          install_portal_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              offset: String,
              count: Integer,
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
