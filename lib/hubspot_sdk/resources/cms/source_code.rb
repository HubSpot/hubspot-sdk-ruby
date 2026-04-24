# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class SourceCode
        # Extract a zip file in the developer file system. Extraction status can be
        # checked with the `/extract/async/tasks/taskId/status` endpoint below.
        #
        # @overload extract_async(path:, request_options: {})
        #
        # @param path [String] The file system location where the zip file is to be extracted.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::TaskLocator]
        #
        # @see HubSpotSDK::Models::Cms::SourceCodeExtractAsyncParams
        def extract_async(params)
          parsed, options = HubSpotSDK::Cms::SourceCodeExtractAsyncParams.dump_request(params)
          @client.request(
            method: :post,
            path: "cms/source-code/2026-03/extract/async",
            body: parsed,
            model: HubSpotSDK::TaskLocator,
            options: options
          )
        end

        # Get the status of an extraction by the `taskId` returned from the initial
        # `extract/async` request.
        #
        # @overload get_extraction_status(task_id, request_options: {})
        #
        # @param task_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::ActionResponse]
        #
        # @see HubSpotSDK::Models::Cms::SourceCodeGetExtractionStatusParams
        def get_extraction_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["cms/source-code/2026-03/extract/async/tasks/%1$s/status", task_id],
            model: HubSpotSDK::ActionResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
