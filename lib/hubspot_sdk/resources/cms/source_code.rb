# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class SourceCode
        # @deprecated
        #
        # Creates a file at the specified path in the specified environment. Accepts
        # multipart/form-data content type. Throws an error if a file already exists at
        # the specified path.
        #
        # @overload create(path, environment:, file: nil, request_options: {})
        #
        # @param path [String] Path param
        #
        # @param environment [String] Path param
        #
        # @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::AssetFileMetadata]
        #
        # @see HubSpotSDK::Models::Cms::SourceCodeCreateParams
        def create(path, params)
          parsed, options = HubSpotSDK::Cms::SourceCodeCreateParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["cms/source-code/2026-03/%1$s/content/%2$s", environment, path],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubSpotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Deletes the file at the specified path in the specified environment.
        #
        # @overload delete(path, environment:, request_options: {})
        #
        # @param path [String]
        # @param environment [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Cms::SourceCodeDeleteParams
        def delete(path, params)
          parsed, options = HubSpotSDK::Cms::SourceCodeDeleteParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["cms/source-code/2026-03/%1$s/content/%2$s", environment, path],
            model: NilClass,
            options: options
          )
        end

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

        # Downloads the byte contents of the file at the specified path in the specified
        # environment.
        #
        # @overload get(path, environment:, request_options: {})
        #
        # @param path [String]
        # @param environment [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubSpotSDK::Models::Cms::SourceCodeGetParams
        def get(path, params)
          parsed, options = HubSpotSDK::Cms::SourceCodeGetParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["cms/source-code/2026-03/%1$s/content/%2$s", environment, path],
            headers: {"accept" => "*/*"},
            model: StringIO,
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

        # Gets the metadata object for the file at the specified path in the specified
        # environment.
        #
        # @overload get_metadata(path, environment:, properties: nil, request_options: {})
        #
        # @param path [String] Path param
        #
        # @param environment [String] Path param
        #
        # @param properties [String] Query param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::AssetFileMetadata]
        #
        # @see HubSpotSDK::Models::Cms::SourceCodeGetMetadataParams
        def get_metadata(path, params)
          parsed, options = HubSpotSDK::Cms::SourceCodeGetMetadataParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["cms/source-code/2026-03/%1$s/metadata/%2$s", environment, path],
            query: query,
            model: HubSpotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Upserts a file at the specified path in the specified environment. Accepts
        # multipart/form-data content type.
        #
        # @overload upsert(path, environment:, file: nil, request_options: {})
        #
        # @param path [String] Path param
        #
        # @param environment [String] Path param
        #
        # @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::AssetFileMetadata]
        #
        # @see HubSpotSDK::Models::Cms::SourceCodeUpsertParams
        def upsert(path, params)
          parsed, options = HubSpotSDK::Cms::SourceCodeUpsertParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["cms/source-code/2026-03/%1$s/content/%2$s", environment, path],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubSpotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Validates the file contents passed to the endpoint given a specified path and
        # environment. Accepts multipart/form-data content type.
        #
        # @overload validate(path, environment:, file: nil, request_options: {})
        #
        # @param path [String] Path param
        #
        # @param environment [String] Path param
        #
        # @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubSpotSDK::Models::Cms::SourceCodeValidateParams
        def validate(path, params)
          parsed, options = HubSpotSDK::Cms::SourceCodeValidateParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["cms/source-code/2026-03/%1$s/validate/%2$s", environment, path],
            headers: {"content-type" => "multipart/form-data", "accept" => "*/*"},
            body: parsed,
            model: StringIO,
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
