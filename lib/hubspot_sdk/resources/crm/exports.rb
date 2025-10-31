# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Exports
        # Begins exporting CRM data for the portal as specified in the request body
        #
        # @overload create(public_export_request:, request_options: {})
        #
        # @param public_export_request [HubspotSDK::CRM::PublicExportRequest]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::TaskLocator]
        #
        # @see HubspotSDK::Models::CRM::ExportCreateParams
        def create(params)
          @client.request(
            method: :post,
            path: "crm/v3/exports/export/async",
            model: HubspotSDK::TaskLocator,
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
        # @return [HubspotSDK::Models::CRM::ActionResponseWithSingleResultUri]
        #
        # @see HubspotSDK::Models::CRM::ExportGetStatusParams
        def get_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/v3/exports/export/async/tasks/%1$s/status", task_id],
            model: HubspotSDK::CRM::ActionResponseWithSingleResultUri,
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
