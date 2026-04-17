# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class JournalFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute current_offset
        #   A UUID string indicating the current offset in the journal data, used for
        #   pagination.
        #
        #   @return [String]
        required :current_offset, String, api_name: :currentOffset

        # @!attribute expires_at
        #   The date and time when the URL will expire, in ISO 8601 format.
        #
        #   @return [Time]
        required :expires_at, Time, api_name: :expiresAt

        # @!attribute url
        #   A string representing the URL where the fetched journal data can be accessed.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(current_offset:, expires_at:, url:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::JournalFetchResponse} for more details.
        #
        #   @param current_offset [String] A UUID string indicating the current offset in the journal data, used for pagina
        #
        #   @param expires_at [Time] The date and time when the URL will expire, in ISO 8601 format.
        #
        #   @param url [String] A string representing the URL where the fetched journal data can be accessed.
      end
    end
  end
end
