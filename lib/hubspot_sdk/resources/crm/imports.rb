# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Imports
        # @overload create(files: nil, import_request: nil, request_options: {})
        #
        # @param files [Pathname, StringIO, IO, String, HubspotSDK::FilePart]
        # @param import_request [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicImportResponse]
        #
        # @see HubspotSDK::Models::Crm::ImportCreateParams
        def create(params = {})
          parsed, options = HubspotSDK::Crm::ImportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "crm/imports/2026-03",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubspotSDK::Crm::PublicImportResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ImportListParams} for more details.
        #
        # @overload list(after: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::PublicImportResponse>]
        #
        # @see HubspotSDK::Models::Crm::ImportListParams
        def list(params = {})
          parsed, options = HubspotSDK::Crm::ImportListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "crm/imports/2026-03",
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Crm::PublicImportResponse,
            options: options
          )
        end

        # @overload cancel(import_id, request_options: {})
        #
        # @param import_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::ActionResponse]
        #
        # @see HubspotSDK::Models::Crm::ImportCancelParams
        def cancel(import_id, params = {})
          @client.request(
            method: :post,
            path: ["crm/imports/2026-03/%1$s/cancel", import_id],
            model: HubspotSDK::ActionResponse,
            options: params[:request_options]
          )
        end

        # @overload get(import_id, request_options: {})
        #
        # @param import_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicImportResponse]
        #
        # @see HubspotSDK::Models::Crm::ImportGetParams
        def get(import_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/imports/2026-03/%1$s", import_id],
            model: HubspotSDK::Crm::PublicImportResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ImportListErrorsParams} for more details.
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::PublicImportError>]
        #
        # @see HubspotSDK::Models::Crm::ImportListErrorsParams
        def list_errors(import_id, params = {})
          parsed, options = HubspotSDK::Crm::ImportListErrorsParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/imports/2026-03/%1$s/errors", import_id],
            query: query.transform_keys(
              include_error_message: "includeErrorMessage",
              include_row_data: "includeRowData"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Crm::PublicImportError,
            options: options
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
