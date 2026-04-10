# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class JournalFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute current_offset
        #
        #   @return [String]
        required :current_offset, String, api_name: :currentOffset

        # @!attribute expires_at
        #
        #   @return [Time]
        required :expires_at, Time, api_name: :expiresAt

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(current_offset:, expires_at:, url:)
        #   @param current_offset [String]
        #   @param expires_at [Time]
        #   @param url [String]
      end
    end
  end
end
