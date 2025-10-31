# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Exports#create
      class ExportCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute public_export_request
        #
        #   @return [HubspotSDK::Models::CRM::PublicExportViewRequest, HubspotSDK::Models::CRM::PublicExportListRequest]
        required :public_export_request, union: -> { HubspotSDK::CRM::PublicExportRequest }

        # @!method initialize(public_export_request:, request_options: {})
        #   @param public_export_request [HubspotSDK::Models::CRM::PublicExportViewRequest, HubspotSDK::Models::CRM::PublicExportListRequest]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
