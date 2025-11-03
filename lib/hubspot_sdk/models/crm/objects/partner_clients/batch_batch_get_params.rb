# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module PartnerClients
          # @see HubspotSDK::Resources::Crm::Objects::PartnerClients::Batch#batch_get
          class BatchBatchGetParams < HubspotSDK::Models::Crm::BatchReadInputSimplePublicObjectID
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute archived
            #
            #   @return [Boolean, nil]
            optional :archived, HubspotSDK::Internal::Type::Boolean

            # @!method initialize(archived: nil, request_options: {})
            #   @param archived [Boolean]
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
