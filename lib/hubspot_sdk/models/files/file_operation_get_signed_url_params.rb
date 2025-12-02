# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::FileOperations#get_signed_url
      class FileOperationGetSignedURLParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute expiration_seconds
        #   How long in seconds the link will provide access to the file.
        #
        #   @return [Integer, nil]
        optional :expiration_seconds, Integer

        # @!attribute size
        #   For image files. This will resize the image to the desired size before sharing.
        #   Does not affect the original file, just the file served by this signed URL.
        #
        #   @return [Symbol, HubspotSDK::Models::Files::FileOperationGetSignedURLParams::Size, nil]
        optional :size, enum: -> { HubspotSDK::Files::FileOperationGetSignedURLParams::Size }

        # @!attribute upscale
        #   If size is provided, this will upscale the image to fit the size dimensions.
        #
        #   @return [Boolean, nil]
        optional :upscale, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(expiration_seconds: nil, size: nil, upscale: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FileOperationGetSignedURLParams} for more details.
        #
        #   @param expiration_seconds [Integer] How long in seconds the link will provide access to the file.
        #
        #   @param size [Symbol, HubspotSDK::Models::Files::FileOperationGetSignedURLParams::Size] For image files. This will resize the image to the desired size before sharing.
        #
        #   @param upscale [Boolean] If size is provided, this will upscale the image to fit the size dimensions.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # For image files. This will resize the image to the desired size before sharing.
        # Does not affect the original file, just the file served by this signed URL.
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
