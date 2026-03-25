# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      class FileColumn < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #   The name of the column, represented as a string.
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #   The data type of the column, represented as a string.
        #
        #   @return [String]
        required :type, String

        # @!method initialize(name:, type:)
        #   @param name [String] The name of the column, represented as a string.
        #
        #   @param type [String] The data type of the column, represented as a string.
      end
    end
  end
end
