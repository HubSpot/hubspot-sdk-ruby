# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class MediaType < HubspotSDK::Internal::Type::BaseModel
        # @!attribute parameters
        #   An object containing additional parameters for the media type, where each
        #   key-value pair is a string.
        #
        #   @return [Hash{Symbol=>String}]
        required :parameters, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute subtype
        #   The specific subtype of the media, represented as a string.
        #
        #   @return [String]
        required :subtype, String

        # @!attribute type
        #   The primary type of the media, represented as a string.
        #
        #   @return [String]
        required :type, String

        # @!attribute wildcard_subtype
        #   A boolean indicating whether the media subtype is a wildcard.
        #
        #   @return [Boolean]
        required :wildcard_subtype, HubspotSDK::Internal::Type::Boolean, api_name: :wildcardSubtype

        # @!attribute wildcard_type
        #   A boolean indicating whether the media type is a wildcard.
        #
        #   @return [Boolean]
        required :wildcard_type, HubspotSDK::Internal::Type::Boolean, api_name: :wildcardType

        # @!method initialize(parameters:, subtype:, type:, wildcard_subtype:, wildcard_type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::MediaType} for more details.
        #
        #   @param parameters [Hash{Symbol=>String}] An object containing additional parameters for the media type, where each key-va
        #
        #   @param subtype [String] The specific subtype of the media, represented as a string.
        #
        #   @param type [String] The primary type of the media, represented as a string.
        #
        #   @param wildcard_subtype [Boolean] A boolean indicating whether the media subtype is a wildcard.
        #
        #   @param wildcard_type [Boolean] A boolean indicating whether the media type is a wildcard.
      end
    end
  end
end
