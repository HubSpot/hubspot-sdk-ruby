# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class SignedURL < HubspotSDK::Internal::Type::BaseModel
        # @!attribute expires_at
        #   Timestamp of when the URL will no longer grant access to the file.
        #
        #   @return [Time]
        required :expires_at, Time, api_name: :expiresAt

        # @!attribute extension
        #   Extension of the requested file.
        #
        #   @return [String]
        required :extension, String

        # @!attribute name
        #   Name of the requested file.
        #
        #   @return [String]
        required :name, String

        # @!attribute size
        #   Size in bytes of the requested file.
        #
        #   @return [Integer]
        required :size, Integer

        # @!attribute type
        #   Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
        #
        #   @return [String]
        required :type, String

        # @!attribute url
        #   Signed URL with access to the specified file. Anyone with this URL will be able
        #   to access the file until it expires.
        #
        #   @return [String]
        required :url, String

        # @!attribute height
        #   For image and video files. The height of the file.
        #
        #   @return [Integer, nil]
        optional :height, Integer

        # @!attribute width
        #   For image and video files. The width of the file.
        #
        #   @return [Integer, nil]
        optional :width, Integer

        # @!method initialize(expires_at:, extension:, name:, size:, type:, url:, height: nil, width: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::SignedURL} for more details.
        #
        #   Signed Url object with optional ancillary metadata of requested file
        #
        #   @param expires_at [Time] Timestamp of when the URL will no longer grant access to the file.
        #
        #   @param extension [String] Extension of the requested file.
        #
        #   @param name [String] Name of the requested file.
        #
        #   @param size [Integer] Size in bytes of the requested file.
        #
        #   @param type [String] Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
        #
        #   @param url [String] Signed URL with access to the specified file. Anyone with this URL will be able
        #
        #   @param height [Integer] For image and video files. The height of the file.
        #
        #   @param width [Integer] For image and video files. The width of the file.
      end
    end
  end
end
