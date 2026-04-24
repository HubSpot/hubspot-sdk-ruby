# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Column < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Column Id
        #
        #   @return [String]
        required :id, String

        # @!attribute deleted
        #   Indicates whether the column has been deleted.
        #
        #   @return [Boolean]
        required :deleted, HubSpotSDK::Internal::Type::Boolean

        # @!attribute description
        #   The description of the column.
        #
        #   @return [String]
        required :description, String

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

        # @!attribute type
        #   Type of the column
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::Column::Type]
        required :type, enum: -> { HubSpotSDK::Cms::Column::Type }

        # @!attribute created_at
        #   The timestamp when the column was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_by
        #
        #   @return [HubSpotSDK::Models::Cms::SimpleUser, nil]
        optional :created_by, -> { HubSpotSDK::Cms::SimpleUser }, api_name: :createdBy

        # @!attribute created_by_user_id
        #   The ID of the user who created the column.
        #
        #   @return [Integer, nil]
        optional :created_by_user_id, Integer, api_name: :createdByUserId

        # @!attribute foreign_column_id
        #   Foreign Column id
        #
        #   @return [Integer, nil]
        optional :foreign_column_id, Integer, api_name: :foreignColumnId

        # @!attribute foreign_ids
        #   Foreign Ids
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ForeignID>, nil]
        optional :foreign_ids,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ForeignID] },
                 api_name: :foreignIds

        # @!attribute foreign_ids_by_id
        #   Foreign ids
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Cms::ForeignID}, nil]
        optional :foreign_ids_by_id,
                 -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ForeignID] },
                 api_name: :foreignIdsById

        # @!attribute foreign_ids_by_name
        #   Foreign ids by name
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Cms::ForeignID}, nil]
        optional :foreign_ids_by_name,
                 -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ForeignID] },
                 api_name: :foreignIdsByName

        # @!attribute foreign_table_id
        #   Foreign table id referenced
        #
        #   @return [Integer, nil]
        optional :foreign_table_id, Integer, api_name: :foreignTableId

        # @!attribute option_count
        #   Number of options available
        #
        #   @return [Integer, nil]
        optional :option_count, Integer, api_name: :optionCount

        # @!attribute options
        #   Options to choose for select and multi-select columns
        #
        #   @return [Array<HubSpotSDK::Models::Cms::HubdbOption>, nil]
        optional :options, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::HubdbOption] }

        # @!attribute updated_at
        #   The timestamp when the column was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_by
        #
        #   @return [HubSpotSDK::Models::Cms::SimpleUser, nil]
        optional :updated_by, -> { HubSpotSDK::Cms::SimpleUser }, api_name: :updatedBy

        # @!attribute updated_by_user_id
        #   The ID of the user who last updated the column.
        #
        #   @return [Integer, nil]
        optional :updated_by_user_id, Integer, api_name: :updatedByUserId

        # @!attribute width
        #   Column width for HubDB UI
        #
        #   @return [Integer, nil]
        optional :width, Integer

        # @!method initialize(id:, deleted:, description:, label:, name:, type:, created_at: nil, created_by: nil, created_by_user_id: nil, foreign_column_id: nil, foreign_ids: nil, foreign_ids_by_id: nil, foreign_ids_by_name: nil, foreign_table_id: nil, option_count: nil, options: nil, updated_at: nil, updated_by: nil, updated_by_user_id: nil, width: nil)
        #   @param id [String] Column Id
        #
        #   @param deleted [Boolean] Indicates whether the column has been deleted.
        #
        #   @param description [String] The description of the column.
        #
        #   @param label [String] Label of the column
        #
        #   @param name [String] Name of the column
        #
        #   @param type [Symbol, HubSpotSDK::Models::Cms::Column::Type] Type of the column
        #
        #   @param created_at [Time] The timestamp when the column was created.
        #
        #   @param created_by [HubSpotSDK::Models::Cms::SimpleUser]
        #
        #   @param created_by_user_id [Integer] The ID of the user who created the column.
        #
        #   @param foreign_column_id [Integer] Foreign Column id
        #
        #   @param foreign_ids [Array<HubSpotSDK::Models::Cms::ForeignID>] Foreign Ids
        #
        #   @param foreign_ids_by_id [Hash{Symbol=>HubSpotSDK::Models::Cms::ForeignID}] Foreign ids
        #
        #   @param foreign_ids_by_name [Hash{Symbol=>HubSpotSDK::Models::Cms::ForeignID}] Foreign ids by name
        #
        #   @param foreign_table_id [Integer] Foreign table id referenced
        #
        #   @param option_count [Integer] Number of options available
        #
        #   @param options [Array<HubSpotSDK::Models::Cms::HubdbOption>] Options to choose for select and multi-select columns
        #
        #   @param updated_at [Time] The timestamp when the column was last updated.
        #
        #   @param updated_by [HubSpotSDK::Models::Cms::SimpleUser]
        #
        #   @param updated_by_user_id [Integer] The ID of the user who last updated the column.
        #
        #   @param width [Integer] Column width for HubDB UI

        # Type of the column
        #
        # @see HubSpotSDK::Models::Cms::Column#type
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
