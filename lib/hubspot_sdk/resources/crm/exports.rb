# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Exports
        # Begins exporting CRM data for the portal as specified in the request body
        #
        # @overload create_async(public_export_request:, request_options: {})
        #
        # @param public_export_request [HubspotSDK::Models::Crm::PublicExportViewRequest, HubspotSDK::Models::Crm::PublicExportListRequest]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::TaskLocator]
        #
        # @see HubspotSDK::Models::Crm::ExportCreateAsyncParams
        def create_async(params)
          parsed, options = HubspotSDK::Crm::ExportCreateAsyncParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/exports/2026-03/export/async",
            body: parsed[:public_export_request],
            model: HubspotSDK::TaskLocator,
            options: options
          )
        end

        # Retrieve detailed information about a specific CRM export, including its current
        # state and properties.
        #
        # @overload get(export_id, request_options: {})
        #
        # @param export_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicExportResponse]
        #
        # @see HubspotSDK::Models::Crm::ExportGetParams
        def get(export_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/exports/2026-03/export/%1$s", export_id],
            model: HubspotSDK::Crm::PublicExportResponse,
            options: params[:request_options]
          )
        end

        # Returns the status of the export with taskId, including the URL of the resulting
        # file if the export status is COMPLETE
        #
        # @overload get_status(task_id, request_options: {})
        #
        # @param task_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ActionResponseWithSingleResultUri]
        #
        # @see HubspotSDK::Models::Crm::ExportGetStatusParams
        def get_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/exports/2026-03/export/async/tasks/%1$s/status", task_id],
            model: HubspotSDK::Crm::ActionResponseWithSingleResultUri,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
