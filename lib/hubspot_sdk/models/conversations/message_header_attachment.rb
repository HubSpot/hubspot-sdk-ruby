# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class MessageHeaderAttachment < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::MessageHeaderAttachment::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::MessageHeaderAttachment::Type }

        # @!attribute file_id
        #
        #   @return [Integer, nil]
        optional :file_id, Integer, api_name: :fileId

        # @!attribute text
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(type:, file_id: nil, text: nil)
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::MessageHeaderAttachment::Type]
        #   @param file_id [Integer]
        #   @param text [String]

        # @see HubSpotSDK::Models::Conversations::MessageHeaderAttachment#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          MESSAGE_HEADER = :MESSAGE_HEADER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
