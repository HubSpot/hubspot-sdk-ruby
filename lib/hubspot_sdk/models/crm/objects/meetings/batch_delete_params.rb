# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Meetings
          # @see HubspotSDK::Resources::Crm::Objects::Meetings::Batch#delete
          class BatchDeleteParams < HubspotSDK::Models::Crm::BatchInputSimplePublicObjectID
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
