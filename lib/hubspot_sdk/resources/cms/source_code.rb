# frozen_string_literal: true

module HubspotSDK
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
        # @param path [String] Path param: The file system location of the file.
        #
        # @param environment [String] Path param: The environment of the file ("draft" or "published").
        #
        # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] Body param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::AssetFileMetadata]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeCreateParams
        def create(path, params)
          parsed, options = HubspotSDK::Cms::SourceCodeCreateParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["cms/v3/source-code/%1$s/content/%2$s", environment, path],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubspotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Deletes the file at the specified path in the specified environment.
        #
        # @overload delete(path, environment:, request_options: {})
        #
        # @param path [String] The file system location of the file.
        #
        # @param environment [String] The environment of the file ("draft" or "published").
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeDeleteParams
        def delete(path, params)
          parsed, options = HubspotSDK::Cms::SourceCodeDeleteParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["cms/v3/source-code/%1$s/content/%2$s", environment, path],
            model: NilClass,
            options: options
          )
        end

        # Extract a zip file in the developer file system. Extraction status can be
        # checked with the `/extract/async/tasks/taskId/status` endpoint below.
        #
        # @overload extract_async(path:, request_options: {})
        #
        # @param path [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::TaskLocator]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeExtractAsyncParams
        def extract_async(params)
          parsed, options = HubspotSDK::Cms::SourceCodeExtractAsyncParams.dump_request(params)
          @client.request(
            method: :post,
            path: "cms/v3/source-code/extract/async",
            body: parsed,
            model: HubspotSDK::TaskLocator,
            options: options
          )
        end

        # Downloads the byte contents of the file at the specified path in the specified
        # environment.
        #
        # @overload get(path, environment:, request_options: {})
        #
        # @param path [String] The file system location of the file.
        #
        # @param environment [String] The environment of the file ("draft" or "published").
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeGetParams
        def get(path, params)
          parsed, options = HubspotSDK::Cms::SourceCodeGetParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["cms/v3/source-code/%1$s/content/%2$s", environment, path],
            headers: {"accept" => "application/octet-stream"},
            model: StringIO,
            options: options
          )
        end

        # Get the status of an extraction by the `taskId` returned from the initial
        # `extract/async` request.
        #
        # @overload get_extraction_status(task_id, request_options: {})
        #
        # @param task_id [Integer] The extraction task ID returned by the initial `extract/async` request.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::ActionResponse]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeGetExtractionStatusParams
        def get_extraction_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["cms/v3/source-code/extract/async/tasks/%1$s/status", task_id],
            model: HubspotSDK::ActionResponse,
            options: params[:request_options]
          )
        end

        # Gets the metadata object for the file at the specified path in the specified
        # environment.
        #
        # @overload get_metadata(path, environment:, properties: nil, request_options: {})
        #
        # @param path [String] Path param: The file system location of the file.
        #
        # @param environment [String] Path param: The environment of the file ("draft" or "published").
        #
        # @param properties [String] Query param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::AssetFileMetadata]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeGetMetadataParams
        def get_metadata(path, params)
          parsed, options = HubspotSDK::Cms::SourceCodeGetMetadataParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["cms/v3/source-code/%1$s/metadata/%2$s", environment, path],
            query: parsed,
            model: HubspotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Upserts a file at the specified path in the specified environment. Accepts
        # multipart/form-data content type.
        #
        # @overload upsert(path, environment:, file: nil, request_options: {})
        #
        # @param path [String] Path param: The file system location of the file.
        #
        # @param environment [String] Path param: The environment of the file ("draft" or "published").
        #
        # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] Body param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::AssetFileMetadata]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeUpsertParams
        def upsert(path, params)
          parsed, options = HubspotSDK::Cms::SourceCodeUpsertParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["cms/v3/source-code/%1$s/content/%2$s", environment, path],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubspotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Validates the file contents passed to the endpoint given a specified path and
        # environment. Accepts multipart/form-data content type.
        #
        # @overload validate(path, environment:, file: nil, request_options: {})
        #
        # @param path [String] Path param: The file system location of the file.
        #
        # @param environment [String] Path param:
        #
        # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] Body param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeValidateParams
        def validate(path, params)
          parsed, options = HubspotSDK::Cms::SourceCodeValidateParams.dump_request(params)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["cms/v3/source-code/%1$s/validate/%2$s", environment, path],
            headers: {"content-type" => "multipart/form-data", "accept" => "*/*"},
            body: parsed,
            model: StringIO,
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
