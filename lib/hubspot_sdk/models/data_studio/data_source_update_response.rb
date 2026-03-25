# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      # @see HubspotSDK::Resources::DataStudio::Datasource#update
      class DataSourceUpdateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute datasource_id
        #   The unique identifier for the data source. It is an integer formatted as int64.
        #
        #   @return [Integer]
        required :datasource_id, Integer, api_name: :datasourceId

        # @!attribute datasource_name
        #   The name of the data source. It is a string.
        #
        #   @return [String]
        required :datasource_name, String, api_name: :datasourceName

        # @!attribute preview_link
        #   A URL string that provides a preview link for the data source.
        #
        #   @return [String]
        required :preview_link, String, api_name: :previewLink

        # @!method initialize(datasource_id:, datasource_name:, preview_link:)
        #   @param datasource_id [Integer] The unique identifier for the data source. It is an integer formatted as int64.
        #
        #   @param datasource_name [String] The name of the data source. It is a string.
        #
        #   @param preview_link [String] A URL string that provides a preview link for the data source.
      end
    end
  end
end
