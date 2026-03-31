# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Files#get_signed_url
      class FileGetSignedURLParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String

        # @!attribute expiration_seconds
        #
        #   @return [Integer, nil]
        optional :expiration_seconds, Integer

        # @!attribute size
        #
        #   @return [Symbol, HubspotSDK::Models::Files::FileGetSignedURLParams::Size, nil]
        optional :size, enum: -> { HubspotSDK::Files::FileGetSignedURLParams::Size }

        # @!attribute upscale
        #
        #   @return [Boolean, nil]
        optional :upscale, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(file_id:, expiration_seconds: nil, size: nil, upscale: nil, request_options: {})
        #   @param file_id [String]
        #   @param expiration_seconds [Integer]
        #   @param size [Symbol, HubspotSDK::Models::Files::FileGetSignedURLParams::Size]
        #   @param upscale [Boolean]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module Size
          extend HubspotSDK::Internal::Type::Enum

          ICON = :icon
          MEDIUM = :medium
          PREVIEW = :preview
          THUMB = :thumb

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
