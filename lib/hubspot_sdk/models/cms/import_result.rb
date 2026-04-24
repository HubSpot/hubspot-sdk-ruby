# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ImportResult < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute duplicate_rows
        #   Specifies number of duplicate rows
        #
        #   @return [Integer]
        required :duplicate_rows, Integer, api_name: :duplicateRows

        # @!attribute errors
        #   List of errors during import
        #
        #   @return [Array<HubSpotSDK::Models::BaseError>]
        required :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseError] }

        # @!attribute row_limit_exceeded
        #   Specifies whether row limit exceeded during import
        #
        #   @return [Boolean]
        required :row_limit_exceeded, HubSpotSDK::Internal::Type::Boolean, api_name: :rowLimitExceeded

        # @!attribute rows_imported
        #   Specifies number of rows imported
        #
        #   @return [Integer]
        required :rows_imported, Integer, api_name: :rowsImported

        # @!method initialize(duplicate_rows:, errors:, row_limit_exceeded:, rows_imported:)
        #   @param duplicate_rows [Integer] Specifies number of duplicate rows
        #
        #   @param errors [Array<HubSpotSDK::Models::BaseError>] List of errors during import
        #
        #   @param row_limit_exceeded [Boolean] Specifies whether row limit exceeded during import
        #
        #   @param rows_imported [Integer] Specifies number of rows imported
      end
    end
  end
end
