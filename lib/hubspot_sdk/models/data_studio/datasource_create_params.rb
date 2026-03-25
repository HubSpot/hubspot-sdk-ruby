# frozen_string_literal: true

module HubspotSDK
  module Models
    module DataStudio
      # @see HubspotSDK::Resources::DataStudio::Datasource#create
      class DatasourceCreateParams < HubspotSDK::Models::DataStudio::FormDataMultiPart
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
