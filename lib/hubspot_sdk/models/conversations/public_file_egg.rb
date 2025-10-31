# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicFileEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String, api_name: :fileId

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::PublicFileEgg::Type]
        required :type, enum: -> { HubspotSDK::Conversations::PublicFileEgg::Type }

        # @!method initialize(file_id:, type:)
        #   @param file_id [String]
        #   @param type [Symbol, HubspotSDK::Models::Conversations::PublicFileEgg::Type]

        # @see HubspotSDK::Models::Conversations::PublicFileEgg#type
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
