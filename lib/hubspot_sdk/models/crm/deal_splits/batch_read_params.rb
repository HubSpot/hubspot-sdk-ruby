# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module DealSplits
        # @see HubspotSDK::Resources::Crm::DealSplits::Batch#read
        class BatchReadParams < HubspotSDK::Models::BatchInputPublicObjectID
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
