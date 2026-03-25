# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class SourceCode
        # Upload a content file to a specified environment and path in the HubSpot CMS.
        # This endpoint allows you to add new content files to your HubSpot account by
        # specifying the environment and path where the file should be stored. The request
        # must include a file in binary format.
        sig do
          params(
            path: String,
            environment: String,
            file: HubspotSDK::Internal::FileInput,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::AssetFileMetadata)
        end
        def create(
          # Path param: The specific path within the environment where the content file will
          # be stored. This should be a valid path string.
          path,
          # Path param: The environment in which the content file will be uploaded.
          # Typically represents different stages like 'staging' or 'production'.
          environment:,
          # Body param
          file: nil,
          request_options: {}
        )
        end

        # Delete a specific content file from the specified environment in your HubSpot
        # CMS. This operation is useful for removing outdated or unnecessary files from
        # your source code repository. Ensure you have the necessary permissions to
        # perform this action.
        sig do
          params(
            path: String,
            environment: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The specific path to the content file that you want to delete. This should be a
          # valid path string.
          path,
          # The environment from which the content file will be deleted. This could refer to
          # different stages such as development, staging, or production.
          environment:,
          request_options: {}
        )
        end

        # Initiate an asynchronous extraction of source code files in the HubSpot CMS.
        # This endpoint is useful for handling large file extractions without blocking the
        # client application. Upon acceptance, it returns a task locator that can be used
        # to check the status of the extraction process.
        sig do
          params(
            path: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::TaskLocator)
        end
        def extract_async(
          # The file system location where the zip file is to be extracted.
          path:,
          request_options: {}
        )
        end

        # Retrieve content from the specified environment and path in your HubSpot CMS.
        # This endpoint allows you to access specific content files based on the
        # environment and path parameters, which can be useful for managing and displaying
        # content in different environments.
        sig do
          params(
            path: String,
            environment: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get(
          # The path to the content file within the specified environment. This should be a
          # valid string that represents the location of the content file.
          path,
          # The environment from which to retrieve the content. This identifies the specific
          # context or stage of the content, such as 'staging' or 'production'.
          environment:,
          request_options: {}
        )
        end

        # Retrieve the status of an asynchronous task related to source code extraction.
        # This endpoint is useful for checking the progress or completion of a task
        # initiated through the asynchronous file extraction process.
        sig do
          params(
            task_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::ActionResponse)
        end
        def get_extraction_status(
          # The unique identifier of the task whose status is being retrieved. It is an
          # integer value.
          task_id,
          request_options: {}
        )
        end

        # Retrieve metadata for a specific file or folder within a specified environment
        # in the HubSpot CMS. This endpoint is useful for obtaining detailed information
        # about content files, such as their creation and update timestamps, and other
        # metadata attributes.
        sig do
          params(
            path: String,
            environment: String,
            properties: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::AssetFileMetadata)
        end
        def get_metadata(
          # Path param: The path to the specific file or folder for which metadata is being
          # retrieved.
          path,
          # Path param: The environment in which the file or directory is located, such as
          # 'staging' or 'production'.
          environment:,
          # Query param: A comma-separated list of specific metadata properties to include
          # in the response.
          properties: nil,
          request_options: {}
        )
        end

        # Update the content file in the specified environment and path within the HubSpot
        # CMS. This operation allows you to upload a new file to replace the existing
        # content at the given path. It is useful for managing and updating your website's
        # source code files directly through the API.
        sig do
          params(
            path: String,
            environment: String,
            file: HubspotSDK::Internal::FileInput,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::AssetFileMetadata)
        end
        def upsert(
          # Path param: The path to the content file that you want to update. This should be
          # a string representing the file's location.
          path,
          # Path param: The environment in which the content file is located, such as
          # 'staging' or 'production'.
          environment:,
          # Body param
          file: nil,
          request_options: {}
        )
        end

        # Validate a source code file within a specified environment in your HubSpot
        # account. This endpoint is useful for checking the correctness of code files
        # before deployment or further processing. The validation process requires the
        # file to be uploaded in a multipart/form-data request.
        sig do
          params(
            path: String,
            environment: String,
            file: HubspotSDK::Internal::FileInput,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def validate(
          # Path param: The path of the source code file to validate. This should be a
          # string that matches the file's location within the environment.
          path,
          # Path param
          environment:,
          # Body param
          file: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
