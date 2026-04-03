# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module GenericObjects
          # @see HubspotSDK::Resources::Crm::Objects::GenericObjects::Batch#get
          class BatchGetParams < HubspotSDK::Models::Crm::BatchReadInputSimplePublicObjectID
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute object_type
            #
            #   @return [String]
            required :object_type, String

            # @!attribute archived
            #   Whether to return only results that have been archived.
            #
            #   @return [Boolean, nil]
            optional :archived, HubspotSDK::Internal::Type::Boolean

            # @!method initialize(object_type:, archived: nil, request_options: {})
            #   @param object_type [String]
            #
            #   @param archived [Boolean] Whether to return only results that have been archived.
            #
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
