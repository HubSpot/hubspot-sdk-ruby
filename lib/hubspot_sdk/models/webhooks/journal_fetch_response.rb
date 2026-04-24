# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class JournalFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute current_offset
        #   The unique identifier for the current offset of the journal entry, formatted as
        #   a UUID.
        #
        #   @return [String]
        required :current_offset, String, api_name: :currentOffset

        # @!attribute expires_at
        #   The date and time when the URL will expire, in ISO 8601 format.
        #
        #   @return [Time]
        required :expires_at, Time, api_name: :expiresAt

        # @!attribute url
        #   The URL where the journal entry can be accessed. It is a string.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(current_offset:, expires_at:, url:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::JournalFetchResponse} for more details.
        #
        #   @param current_offset [String] The unique identifier for the current offset of the journal entry, formatted as
        #
        #   @param expires_at [Time] The date and time when the URL will expire, in ISO 8601 format.
        #
        #   @param url [String] The URL where the journal entry can be accessed. It is a string.
      end
    end
  end
end
