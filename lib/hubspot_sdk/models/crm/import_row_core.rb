# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class ImportRowCore < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contains_encrypted_properties
        #
        #   @return [Boolean]
        required :contains_encrypted_properties,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :containsEncryptedProperties

        # @!attribute file_id
        #
        #   @return [Integer]
        required :file_id, Integer, api_name: :fileId

        # @!attribute line_number
        #
        #   @return [Integer]
        required :line_number, Integer, api_name: :lineNumber

        # @!attribute row_data
        #
        #   @return [Array<String>]
        required :row_data, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :rowData

        # @!attribute page_name
        #
        #   @return [String, nil]
        optional :page_name, String, api_name: :pageName

        # @!method initialize(contains_encrypted_properties:, file_id:, line_number:, row_data:, page_name: nil)
        #   @param contains_encrypted_properties [Boolean]
        #   @param file_id [Integer]
        #   @param line_number [Integer]
        #   @param row_data [Array<String>]
        #   @param page_name [String]
      end
    end
  end
end
