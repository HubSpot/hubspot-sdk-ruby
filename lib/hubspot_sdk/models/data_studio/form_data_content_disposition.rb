# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class FormDataContentDisposition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute creation_date
        #   The date and time when the file was created, in ISO 8601 format.
        #
        #   @return [Time]
        required :creation_date, Time, api_name: :creationDate

        # @!attribute file_name
        #   A string indicating the name of the file associated with this content
        #   disposition.
        #
        #   @return [String]
        required :file_name, String, api_name: :fileName

        # @!attribute modification_date
        #   The date and time when the file was last modified, in ISO 8601 format.
        #
        #   @return [Time]
        required :modification_date, Time, api_name: :modificationDate

        # @!attribute name
        #   A string representing the name associated with this content disposition.
        #
        #   @return [String]
        required :name, String

        # @!attribute parameters
        #   An object containing additional parameters for the content disposition, with
        #   each parameter represented as a string.
        #
        #   @return [Hash{Symbol=>String}]
        required :parameters, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute read_date
        #   The date and time when the file was last read, in ISO 8601 format.
        #
        #   @return [Time]
        required :read_date, Time, api_name: :readDate

        # @!attribute size
        #   An integer representing the size of the file in bytes.
        #
        #   @return [Integer]
        required :size, Integer

        # @!attribute type
        #   A string representing the type of content disposition.
        #
        #   @return [String]
        required :type, String

        # @!method initialize(creation_date:, file_name:, modification_date:, name:, parameters:, read_date:, size:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::FormDataContentDisposition} for more details.
        #
        #   @param creation_date [Time] The date and time when the file was created, in ISO 8601 format.
        #
        #   @param file_name [String] A string indicating the name of the file associated with this content dispositio
        #
        #   @param modification_date [Time] The date and time when the file was last modified, in ISO 8601 format.
        #
        #   @param name [String] A string representing the name associated with this content disposition.
        #
        #   @param parameters [Hash{Symbol=>String}] An object containing additional parameters for the content disposition, with eac
        #
        #   @param read_date [Time] The date and time when the file was last read, in ISO 8601 format.
        #
        #   @param size [Integer] An integer representing the size of the file in bytes.
        #
        #   @param type [String] A string representing the type of content disposition.
      end
    end
  end
end
