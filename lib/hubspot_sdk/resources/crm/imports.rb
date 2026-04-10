# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Imports
        # @overload create(files: nil, import_request: nil, request_options: {})
        #
        # @param files [Pathname, StringIO, IO, String, HubSpotSDK::FilePart]
        # @param import_request [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::PublicImportResponse]
        #
        # @see HubSpotSDK::Models::Crm::ImportCreateParams
        def create(params = {})
          parsed, options = HubSpotSDK::Crm::ImportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/imports/2026-03",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubSpotSDK::Crm::PublicImportResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Crm::ImportListParams} for more details.
        #
        # @overload list(after: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Crm::PublicImportResponse>]
        #
        # @see HubSpotSDK::Models::Crm::ImportListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Crm::ImportListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm/imports/2026-03",
            query: query,
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Crm::PublicImportResponse,
            options: options
          )
        end

        # @overload cancel(import_id, request_options: {})
        #
        # @param import_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::ActionResponse]
        #
        # @see HubSpotSDK::Models::Crm::ImportCancelParams
        def cancel(import_id, params = {})
          @client.request(
            method: :post,
            path: ["crm/imports/2026-03/%1$s/cancel", import_id],
            model: HubSpotSDK::ActionResponse,
            options: params[:request_options]
          )
        end

        # @overload get(import_id, request_options: {})
        #
        # @param import_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::PublicImportResponse]
        #
        # @see HubSpotSDK::Models::Crm::ImportGetParams
        def get(import_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/imports/2026-03/%1$s", import_id],
            model: HubSpotSDK::Crm::PublicImportResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Crm::ImportListErrorsParams} for more details.
        #
        # @overload list_errors(import_id, after: nil, include_error_message: nil, include_row_data: nil, limit: nil, request_options: {})
        #
        # @param import_id [Integer]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param include_error_message [Boolean]
        #
        # @param include_row_data [Boolean]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Crm::PublicImportError>]
        #
        # @see HubSpotSDK::Models::Crm::ImportListErrorsParams
        def list_errors(import_id, params = {})
          parsed, options = HubSpotSDK::Crm::ImportListErrorsParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/imports/2026-03/%1$s/errors", import_id],
            query: query.transform_keys(
              include_error_message: "includeErrorMessage",
              include_row_data: "includeRowData"
            ),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Crm::PublicImportError,
            options: options
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
