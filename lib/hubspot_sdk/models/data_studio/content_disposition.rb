# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class ContentDisposition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute creation_date
        #   The date and time when the file was created, formatted as a date-time string.
        #
        #   @return [Time]
        required :creation_date, Time, api_name: :creationDate

        # @!attribute file_name
        #   The name of the file as a string, indicating the file's name in the content
        #   disposition.
        #
        #   @return [String]
        required :file_name, String, api_name: :fileName

        # @!attribute modification_date
        #   The date and time when the file was last modified, formatted as a date-time
        #   string.
        #
        #   @return [Time]
        required :modification_date, Time, api_name: :modificationDate

        # @!attribute parameters
        #   An object containing additional parameters for the content disposition, with
        #   each parameter represented as a key-value pair of strings.
        #
        #   @return [Hash{Symbol=>String}]
        required :parameters, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute read_date
        #   The date and time when the file was last read, formatted as a date-time string.
        #
        #   @return [Time]
        required :read_date, Time, api_name: :readDate

        # @!attribute size
        #   The size of the file as an integer, representing the file's size in bytes.
        #
        #   @return [Integer]
        required :size, Integer

        # @!attribute type
        #   The type of content disposition, typically a string indicating how the content
        #   should be handled.
        #
        #   @return [String]
        required :type, String

        # @!method initialize(creation_date:, file_name:, modification_date:, parameters:, read_date:, size:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::ContentDisposition} for more details.
        #
        #   @param creation_date [Time] The date and time when the file was created, formatted as a date-time string.
        #
        #   @param file_name [String] The name of the file as a string, indicating the file's name in the content disp
        #
        #   @param modification_date [Time] The date and time when the file was last modified, formatted as a date-time stri
        #
        #   @param parameters [Hash{Symbol=>String}] An object containing additional parameters for the content disposition, with eac
        #
        #   @param read_date [Time] The date and time when the file was last read, formatted as a date-time string.
        #
        #   @param size [Integer] The size of the file as an integer, representing the file's size in bytes.
        #
        #   @param type [String] The type of content disposition, typically a string indicating how the content s
      end
    end
  end
end
