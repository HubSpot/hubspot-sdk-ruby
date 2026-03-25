# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Quotes
          # @see HubspotSDK::Resources::Crm::Objects::Quotes::Basic#create
          class BasicCreateParams < HubspotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInputForCreate
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
