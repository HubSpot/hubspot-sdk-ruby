# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicFile < HubspotSDK::Internal::Type::BaseModel
        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String, api_name: :fileId

        # @!attribute file_usage_type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicFile::FileUsageType]
        required :file_usage_type,
                 enum: -> { HubspotSDK::Conversations::PublicFile::FileUsageType },
                 api_name: :fileUsageType

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicFile::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicFile::Type }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(file_id:, file_usage_type:, type:, name: nil, url: nil)
        #   @param file_id [String]
        #   @param file_usage_type [Symbol, HubspotSDK::Models::Conversations::PublicFile::FileUsageType]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicFile::Type]
        #   @param name [String]
        #   @param url [String]

        # @see HubspotSDK::Models::Conversations::PublicFile#file_usage_type
        module FileUsageType
          extend HubspotSDK::Internal::Type::Enum

          AUDIO = :AUDIO
          IMAGE = :IMAGE
          OTHER = :OTHER
          STICKER = :STICKER
          VOICE_RECORDING = :VOICE_RECORDING

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Conversations::PublicFile#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          FILE = :FILE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
