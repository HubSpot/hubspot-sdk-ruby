# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class FileAttachment < HubspotSDK::Internal::Type::BaseModel
        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String, api_name: :fileId

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::FileAttachment::Type]
        required :type, enum: -> { HubspotSDK::Conversations::FileAttachment::Type }

        # @!attribute file_usage_type
        #
        #   @return [String, nil]
        optional :file_usage_type, String, api_name: :fileUsageType

        # @!method initialize(file_id:, type:, file_usage_type: nil)
        #   @param file_id [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::FileAttachment::Type]
        #   @param file_usage_type [String]

        # @see HubspotSDK::Models::Conversations::FileAttachment#type
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
