# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicMessageHeader < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicMessageHeader::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicMessageHeader::Type }

        # @!attribute file_id
        #
        #   @return [Integer, nil]
        optional :file_id, Integer, api_name: :fileId

        # @!attribute text
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(type:, file_id: nil, text: nil)
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicMessageHeader::Type]
        #   @param file_id [Integer]
        #   @param text [String]

        # @see HubspotSDK::Models::Conversations::PublicMessageHeader#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          MESSAGE_HEADER = :MESSAGE_HEADER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
