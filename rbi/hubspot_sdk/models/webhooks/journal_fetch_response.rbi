# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class JournalFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::JournalFetchResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the current offset of the journal entry, formatted as
        # a UUID.
        sig { returns(String) }
        attr_accessor :current_offset

        # The date and time when the URL will expire, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :expires_at

        # The URL where the journal entry can be accessed. It is a string.
        sig { returns(String) }
        attr_accessor :url

        sig do
          params(current_offset: String, expires_at: Time, url: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the current offset of the journal entry, formatted as
          # a UUID.
          current_offset:,
          # The date and time when the URL will expire, in ISO 8601 format.
          expires_at:,
          # The URL where the journal entry can be accessed. It is a string.
          url:
        )
        end

        sig do
          override.returns(
            { current_offset: String, expires_at: Time, url: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
