# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ColumnRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Column Id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute label
        #   Label of the column
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   Name of the column
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #   Options to choose for select and multi-select columns
        #
        #   @return [Array<HubSpotSDK::Models::Cms::HubdbOption>]
        required :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::HubdbOption] }

        # @!attribute type
        #   Type of the column
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::ColumnRequest::Type]
        required :type, enum: -> { HubSpotSDK::Cms::ColumnRequest::Type }

        # @!attribute foreign_column_id
        #   The id of the column from another table to which the column refers/points to.
        #
        #   @return [Integer, nil]
        optional :foreign_column_id, Integer, api_name: :foreignColumnId

        # @!attribute foreign_table_id
        #   The id of another table to which the column refers/points to.
        #
        #   @return [Integer, nil]
        optional :foreign_table_id, Integer, api_name: :foreignTableId

        # @!attribute max_number_of_characters
        #   Defines the maximum number of characters allowed in the column.
        #
        #   @return [Integer, nil]
        optional :max_number_of_characters, Integer, api_name: :maxNumberOfCharacters

        # @!attribute max_number_of_options
        #   Specifies the maximum number of options that can be set for select and
        #   multi-select columns.
        #
        #   @return [Integer, nil]
        optional :max_number_of_options, Integer, api_name: :maxNumberOfOptions

        # @!method initialize(id:, label:, name:, options:, type:, foreign_column_id: nil, foreign_table_id: nil, max_number_of_characters: nil, max_number_of_options: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Cms::ColumnRequest} for more details.
        #
        #   @param id [Integer] Column Id
        #
        #   @param label [String] Label of the column
        #
        #   @param name [String] Name of the column
        #
        #   @param options [Array<HubSpotSDK::Models::Cms::HubdbOption>] Options to choose for select and multi-select columns
        #
        #   @param type [Symbol, HubSpotSDK::Models::Cms::ColumnRequest::Type] Type of the column
        #
        #   @param foreign_column_id [Integer] The id of the column from another table to which the column refers/points to.
        #
        #   @param foreign_table_id [Integer] The id of another table to which the column refers/points to.
        #
        #   @param max_number_of_characters [Integer] Defines the maximum number of characters allowed in the column.
        #
        #   @param max_number_of_options [Integer] Specifies the maximum number of options that can be set for select and multi-sel

        # Type of the column
        #
        # @see HubSpotSDK::Models::Cms::ColumnRequest#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          BOOLEAN = :BOOLEAN
          CODE = :CODE
          COMPOSITE = :COMPOSITE
          CTA = :CTA
          CURRENCY = :CURRENCY
          DATE = :DATE
          DATETIME = :DATETIME
          EMBED = :EMBED
          FILE = :FILE
          FOREIGN_ID = :FOREIGN_ID
          HUBSPOT_VIDEO = :HUBSPOT_VIDEO
          IMAGE = :IMAGE
          JSON = :JSON
          LOCATION = :LOCATION
          MULTISELECT = :MULTISELECT
          NULL = :NULL
          NUMBER = :NUMBER
          RICHTEXT = :RICHTEXT
          SELECT = :SELECT
          TEXT = :TEXT
          URL = :URL
          VIDEO = :VIDEO

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
