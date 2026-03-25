# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ImportRowCore < HubspotSDK::Internal::Type::BaseModel
        # @!attribute additional_row_data
        #
        #   @return [Array<String>]
        required :additional_row_data,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :additionalRowData

        # @!attribute contains_encrypted_properties
        #   Indicates whether this row contains values that were encrypted.
        #
        #   @return [Boolean]
        required :contains_encrypted_properties,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :containsEncryptedProperties

        # @!attribute file_id
        #   The unique identifier of the uploaded file containing this row.
        #
        #   @return [Integer]
        required :file_id, Integer, api_name: :fileId

        # @!attribute line_number
        #   The 1-indexed line number of this row in the source file. Line number 0 is
        #   reserved for file-wide errors that don't correspond to a specific row.
        #
        #   @return [Integer]
        required :line_number, Integer, api_name: :lineNumber

        # @!attribute row_data
        #
        #   @return [Array<String>]
        required :row_data, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :rowData

        # @!attribute page_name
        #   The name of the spreadsheet sheet/page containing this row.
        #
        #   @return [String, nil]
        optional :page_name, String, api_name: :pageName

        # @!method initialize(additional_row_data:, contains_encrypted_properties:, file_id:, line_number:, row_data:, page_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ImportRowCore} for more details.
        #
        #   @param additional_row_data [Array<String>]
        #
        #   @param contains_encrypted_properties [Boolean] Indicates whether this row contains values that were encrypted.
        #
        #   @param file_id [Integer] The unique identifier of the uploaded file containing this row.
        #
        #   @param line_number [Integer] The 1-indexed line number of this row in the source file. Line number 0 is reser
        #
        #   @param row_data [Array<String>]
        #
        #   @param page_name [String] The name of the spreadsheet sheet/page containing this row.
      end
    end
  end
end
