# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class SourceCode
        # @deprecated
        #
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SourceCodeCreateParams} for more details.
        #
        # Upload a content file to a specified environment and path in the HubSpot CMS.
        # This endpoint allows you to add new content files to your HubSpot account by
        # specifying the environment and path where the file should be stored. The request
        # must include a file in binary format.
        #
        # @overload create(path, environment:, file: nil, request_options: {})
        #
        # @param path [String] Path param: The specific path within the environment where the content file will
        #
        # @param environment [String] Path param: The environment in which the content file will be uploaded. Typicall
        #
        # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] Body param
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
            path: ["cms/source-code/2026-03/%1$s/content/%2$s", environment, path],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubspotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SourceCodeDeleteParams} for more details.
        #
        # Delete a specific content file from the specified environment in your HubSpot
        # CMS. This operation is useful for removing outdated or unnecessary files from
        # your source code repository. Ensure you have the necessary permissions to
        # perform this action.
        #
        # @overload delete(path, environment:, request_options: {})
        #
        # @param path [String] The specific path to the content file that you want to delete. This should be a
        #
        # @param environment [String] The environment from which the content file will be deleted. This could refer to
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
            path: ["cms/source-code/2026-03/%1$s/content/%2$s", environment, path],
            model: NilClass,
            options: options
          )
        end

        # Initiate an asynchronous extraction of source code files in the HubSpot CMS.
        # This endpoint is useful for handling large file extractions without blocking the
        # client application. Upon acceptance, it returns a task locator that can be used
        # to check the status of the extraction process.
        #
        # @overload extract_async(path:, request_options: {})
        #
        # @param path [String] The file system location where the zip file is to be extracted.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::TaskLocator]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeExtractAsyncParams
        def extract_async(params)
          parsed, options = HubspotSDK::Cms::SourceCodeExtractAsyncParams.dump_request(params)
          @client.request(
            method: :post,
            path: "cms/source-code/2026-03/extract/async",
            body: parsed,
            model: HubspotSDK::TaskLocator,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SourceCodeGetParams} for more details.
        #
        # Retrieve content from the specified environment and path in your HubSpot CMS.
        # This endpoint allows you to access specific content files based on the
        # environment and path parameters, which can be useful for managing and displaying
        # content in different environments.
        #
        # @overload get(path, environment:, request_options: {})
        #
        # @param path [String] The path to the content file within the specified environment. This should be a
        #
        # @param environment [String] The environment from which to retrieve the content. This identifies the specific
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
            path: ["cms/source-code/2026-03/%1$s/content/%2$s", environment, path],
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SourceCodeGetExtractionStatusParams} for more details.
        #
        # Retrieve the status of an asynchronous task related to source code extraction.
        # This endpoint is useful for checking the progress or completion of a task
        # initiated through the asynchronous file extraction process.
        #
        # @overload get_extraction_status(task_id, request_options: {})
        #
        # @param task_id [Integer] The unique identifier of the task whose status is being retrieved. It is an inte
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::ActionResponse]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeGetExtractionStatusParams
        def get_extraction_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["cms/source-code/2026-03/extract/async/tasks/%1$s/status", task_id],
            model: HubspotSDK::ActionResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SourceCodeGetMetadataParams} for more details.
        #
        # Retrieve metadata for a specific file or folder within a specified environment
        # in the HubSpot CMS. This endpoint is useful for obtaining detailed information
        # about content files, such as their creation and update timestamps, and other
        # metadata attributes.
        #
        # @overload get_metadata(path, environment:, properties: nil, request_options: {})
        #
        # @param path [String] Path param: The path to the specific file or folder for which metadata is being
        #
        # @param environment [String] Path param: The environment in which the file or directory is located, such as '
        #
        # @param properties [String] Query param: A comma-separated list of specific metadata properties to include i
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::AssetFileMetadata]
        #
        # @see HubspotSDK::Models::Cms::SourceCodeGetMetadataParams
        def get_metadata(path, params)
          parsed, options = HubspotSDK::Cms::SourceCodeGetMetadataParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          environment =
            parsed.delete(:environment) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["cms/source-code/2026-03/%1$s/metadata/%2$s", environment, path],
            query: query,
            model: HubspotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SourceCodeUpsertParams} for more details.
        #
        # Update the content file in the specified environment and path within the HubSpot
        # CMS. This operation allows you to upload a new file to replace the existing
        # content at the given path. It is useful for managing and updating your website's
        # source code files directly through the API.
        #
        # @overload upsert(path, environment:, file: nil, request_options: {})
        #
        # @param path [String] Path param: The path to the content file that you want to update. This should be
        #
        # @param environment [String] Path param: The environment in which the content file is located, such as 'stagi
        #
        # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] Body param
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
            path: ["cms/source-code/2026-03/%1$s/content/%2$s", environment, path],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubspotSDK::Cms::AssetFileMetadata,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::SourceCodeValidateParams} for more details.
        #
        # Validate a source code file within a specified environment in your HubSpot
        # account. This endpoint is useful for checking the correctness of code files
        # before deployment or further processing. The validation process requires the
        # file to be uploaded in a multipart/form-data request.
        #
        # @overload validate(path, environment:, file: nil, request_options: {})
        #
        # @param path [String] Path param: The path of the source code file to validate. This should be a strin
        #
        # @param environment [String] Path param
        #
        # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] Body param
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
            path: ["cms/source-code/2026-03/%1$s/validate/%2$s", environment, path],
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
