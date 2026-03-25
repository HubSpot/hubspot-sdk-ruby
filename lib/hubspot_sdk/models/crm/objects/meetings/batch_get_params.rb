# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Meetings
          # @see HubspotSDK::Resources::Crm::Objects::Meetings::Batch#get
          class BatchGetParams < HubspotSDK::Models::Crm::BatchReadInputSimplePublicObjectID
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute archived
            #   Whether to return only results that have been archived.
            #
            #   @return [Boolean, nil]
            optional :archived, HubspotSDK::Internal::Type::Boolean

            # @!method initialize(archived: nil, request_options: {})
            #   @param archived [Boolean] Whether to return only results that have been archived.
            #
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
