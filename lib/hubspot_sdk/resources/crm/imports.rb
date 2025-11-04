# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Imports
        # Begins importing data from the specified file resources. This uploads the
        # corresponding file and uses the import request object to convert rows in the
        # files to objects.
        #
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
            path: "crm/v3/imports/",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubspotSDK::Crm::PublicImportResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::ImportListParams} for more details.
        #
        # Returns a paged list of active imports for this account.
        #
        # @overload list(after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param before [String]
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
          @client.request(
            method: :get,
            path: "crm/v3/imports/",
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Crm::PublicImportResponse,
            options: options
          )
        end

        # This allows a developer to cancel an active import.
        #
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
            path: ["crm/v3/imports/%1$s/cancel", import_id],
            model: HubspotSDK::ActionResponse,
            options: params[:request_options]
          )
        end

        # A complete summary of an import record, including any updates.
        #
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
            path: ["crm/v3/imports/%1$s", import_id],
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
        # @param include_error_message [Boolean] Set to True to receive a message explaining the error.
        #
        # @param include_row_data [Boolean] Set to True to receive the data values for the errored row.
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
          @client.request(
            method: :get,
            path: ["crm/v3/imports/%1$s/errors", import_id],
            query: parsed.transform_keys(
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
