# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      # @see HubspotSDK::Resources::DataStudio::Datasource#get
      class DataSourceGetResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute columns
        #   An array of FileColumn objects representing the columns in the data source.
        #
        #   @return [Array<HubspotSDK::Models::DataStudio::FileColumn>]
        required :columns, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::DataStudio::FileColumn] }

        # @!attribute created_at
        #   The creation date and time of the data source, represented as a string.
        #
        #   @return [String]
        required :created_at, String, api_name: :createdAt

        # @!attribute datasource_id
        #   The unique identifier for the data source, represented as a 64-bit integer.
        #
        #   @return [Integer]
        required :datasource_id, Integer, api_name: :datasourceId

        # @!attribute datasource_name
        #   The name of the data source, represented as a string.
        #
        #   @return [String]
        required :datasource_name, String, api_name: :datasourceName

        # @!attribute datasource_type
        #   The type of the data source, which is a string with a valid value of 'FILE'.
        #
        #   @return [Symbol, HubspotSDK::Models::DataStudio::DataSourceGetResponse::DatasourceType]
        required :datasource_type,
                 enum: -> { HubspotSDK::DataStudio::DataSourceGetResponse::DatasourceType },
                 api_name: :datasourceType

        # @!attribute last_ingestion_status
        #   The status of the last data ingestion process, represented as a string. Valid
        #   values include 'SUCCESSFUL', 'IN_PROGRESS', and 'FAILED'.
        #
        #   @return [Symbol, HubspotSDK::Models::DataStudio::DataSourceGetResponse::LastIngestionStatus]
        required :last_ingestion_status,
                 enum: -> { HubspotSDK::DataStudio::DataSourceGetResponse::LastIngestionStatus },
                 api_name: :lastIngestionStatus

        # @!method initialize(columns:, created_at:, datasource_id:, datasource_name:, datasource_type:, last_ingestion_status:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::DataStudio::DataSourceGetResponse} for more details.
        #
        #   @param columns [Array<HubspotSDK::Models::DataStudio::FileColumn>] An array of FileColumn objects representing the columns in the data source.
        #
        #   @param created_at [String] The creation date and time of the data source, represented as a string.
        #
        #   @param datasource_id [Integer] The unique identifier for the data source, represented as a 64-bit integer.
        #
        #   @param datasource_name [String] The name of the data source, represented as a string.
        #
        #   @param datasource_type [Symbol, HubspotSDK::Models::DataStudio::DataSourceGetResponse::DatasourceType] The type of the data source, which is a string with a valid value of 'FILE'.
        #
        #   @param last_ingestion_status [Symbol, HubspotSDK::Models::DataStudio::DataSourceGetResponse::LastIngestionStatus] The status of the last data ingestion process, represented as a string. Valid va

        # The type of the data source, which is a string with a valid value of 'FILE'.
        #
        # @see HubspotSDK::Models::DataStudio::DataSourceGetResponse#datasource_type
        module DatasourceType
          extend HubspotSDK::Internal::Type::Enum

          FILE = :FILE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the last data ingestion process, represented as a string. Valid
        # values include 'SUCCESSFUL', 'IN_PROGRESS', and 'FAILED'.
        #
        # @see HubspotSDK::Models::DataStudio::DataSourceGetResponse#last_ingestion_status
        module LastIngestionStatus
          extend HubspotSDK::Internal::Type::Enum

          FAILED = :FAILED
          IN_PROGRESS = :IN_PROGRESS
          SUCCESSFUL = :SUCCESSFUL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
