# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Exports#create
      class ExportCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute public_export_request
        #
        #   @return [HubspotSDK::Models::Crm::PublicExportViewRequest, HubspotSDK::Models::Crm::PublicExportListRequest]
        required :public_export_request, union: -> { HubspotSDK::Crm::PublicExportRequest }

        # @!method initialize(public_export_request:, request_options: {})
        #   @param public_export_request [HubspotSDK::Models::Crm::PublicExportViewRequest, HubspotSDK::Models::Crm::PublicExportListRequest]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
