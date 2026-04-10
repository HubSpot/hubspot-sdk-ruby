# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class FileAttachment < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String, api_name: :fileId

        # @!attribute type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::FileAttachment::Type]
        required :type, enum: -> { HubSpotSDK::Conversations::FileAttachment::Type }

        # @!attribute file_usage_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::FileAttachment::FileUsageType, nil]
        optional :file_usage_type,
                 enum: -> { HubSpotSDK::Conversations::FileAttachment::FileUsageType },
                 api_name: :fileUsageType

        # @!method initialize(file_id:, type:, file_usage_type: nil)
        #   @param file_id [String]
        #   @param type [Symbol, HubSpotSDK::Models::Conversations::FileAttachment::Type]
        #   @param file_usage_type [Symbol, HubSpotSDK::Models::Conversations::FileAttachment::FileUsageType]

        # @see HubSpotSDK::Models::Conversations::FileAttachment#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          FILE = :FILE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Conversations::FileAttachment#file_usage_type
        module FileUsageType
          extend HubSpotSDK::Internal::Type::Enum

          AUDIO = :AUDIO
          IMAGE = :IMAGE
          OTHER = :OTHER
          STICKER = :STICKER
          VOICE_RECORDING = :VOICE_RECORDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
