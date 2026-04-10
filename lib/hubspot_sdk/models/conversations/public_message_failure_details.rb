# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class PublicMessageFailureDetails < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute error_message_tokens
        #
        #   @return [Hash{Symbol=>String}]
        required :error_message_tokens,
                 HubSpotSDK::Internal::Type::HashOf[String],
                 api_name: :errorMessageTokens

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String, api_name: :errorMessage

        # @!method initialize(error_message_tokens:, error_message: nil)
        #   @param error_message_tokens [Hash{Symbol=>String}]
        #   @param error_message [String]
      end
    end
  end
end
