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

        # A UUID string indicating the current offset in the journal data, used for
        # pagination.
        sig { returns(String) }
        attr_accessor :current_offset

        # The date and time when the URL will expire, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :expires_at

        # A string representing the URL where the fetched journal data can be accessed.
        sig { returns(String) }
        attr_accessor :url

        sig do
          params(current_offset: String, expires_at: Time, url: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # A UUID string indicating the current offset in the journal data, used for
          # pagination.
          current_offset:,
          # The date and time when the URL will expire, in ISO 8601 format.
          expires_at:,
          # A string representing the URL where the fetched journal data can be accessed.
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
