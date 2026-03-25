# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      # @see HubspotSDK::Resources::DataStudio::Datasource#delete
      class DatasourceDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute datasource_id
        #
        #   @return [Integer]
        required :datasource_id, Integer

        # @!method initialize(datasource_id:, request_options: {})
        #   @param datasource_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
