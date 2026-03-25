# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#list
      class ListListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute include_filters
        #
        #   @return [Boolean, nil]
        optional :include_filters, HubspotSDK::Internal::Type::Boolean

        # @!attribute list_ids
        #
        #   @return [Array<String>, nil]
        optional :list_ids, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(include_filters: nil, list_ids: nil, request_options: {})
        #   @param include_filters [Boolean]
        #   @param list_ids [Array<String>]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
