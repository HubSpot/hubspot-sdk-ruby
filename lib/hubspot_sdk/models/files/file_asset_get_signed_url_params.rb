# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      # @see HubSpotSDK::Resources::Files::FileAssets#get_signed_url
      class FileAssetGetSignedURLParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

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
        #   @return [Symbol, HubSpotSDK::Models::Files::FileAssetGetSignedURLParams::Size, nil]
        optional :size, enum: -> { HubSpotSDK::Files::FileAssetGetSignedURLParams::Size }

        # @!attribute upscale
        #
        #   @return [Boolean, nil]
        optional :upscale, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(file_id:, expiration_seconds: nil, size: nil, upscale: nil, request_options: {})
        #   @param file_id [String]
        #   @param expiration_seconds [Integer]
        #   @param size [Symbol, HubSpotSDK::Models::Files::FileAssetGetSignedURLParams::Size]
        #   @param upscale [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        module Size
          extend HubSpotSDK::Internal::Type::Enum

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
