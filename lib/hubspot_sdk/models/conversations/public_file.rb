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
        #   @return [String]
        required :file_usage_type, String, api_name: :fileUsageType

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicFile::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicFile::Type }

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(file_id:, file_usage_type:, type:, url:, name: nil)
        #   @param file_id [String]
        #   @param file_usage_type [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicFile::Type]
        #   @param url [String]
        #   @param name [String]

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
