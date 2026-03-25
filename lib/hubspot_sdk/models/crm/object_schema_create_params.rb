# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::ObjectSchemas#create
      class ObjectSchemaCreateParams < HubspotSDK::Models::Crm::ObjectSchemaEgg
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
