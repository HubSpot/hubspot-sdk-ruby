# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class SourceCode
        # Creates a file at the specified path in the specified environment. Accepts
        # multipart/form-data content type. Throws an error if a file already exists at
        # the specified path.
        sig do
          params(
            path: String,
            environment: String,
            file: HubspotSDK::Internal::FileInput,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::AssetFileMetadata)
        end
        def create(
          # Path param: The file system location of the file.
          path,
          # Path param: The environment of the file ("draft" or "published").
          environment:,
          # Body param:
          file: nil,
          request_options: {}
        )
        end

        # Deletes the file at the specified path in the specified environment.
        sig do
          params(
            path: String,
            environment: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The file system location of the file.
          path,
          # The environment of the file ("draft" or "published").
          environment:,
          request_options: {}
        )
        end

        # Extract a zip file in the developer file system. Extraction status can be
        # checked with the `/extract/async/tasks/taskId/status` endpoint below.
        sig do
          params(
            path: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::TaskLocator)
        end
        def extract_async(path:, request_options: {})
        end

        # Downloads the byte contents of the file at the specified path in the specified
        # environment.
        sig do
          params(
            path: String,
            environment: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get(
          # The file system location of the file.
          path,
          # The environment of the file ("draft" or "published").
          environment:,
          request_options: {}
        )
        end

        # Get the status of an extraction by the `taskId` returned from the initial
        # `extract/async` request.
        sig do
          params(
            task_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::ActionResponse)
        end
        def get_extraction_status(
          # The extraction task ID returned by the initial `extract/async` request.
          task_id,
          request_options: {}
        )
        end

        # Gets the metadata object for the file at the specified path in the specified
        # environment.
        sig do
          params(
            path: String,
            environment: String,
            properties: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::AssetFileMetadata)
        end
        def get_metadata(
          # Path param: The file system location of the file.
          path,
          # Path param: The environment of the file ("draft" or "published").
          environment:,
          # Query param:
          properties: nil,
          request_options: {}
        )
        end

        # Upserts a file at the specified path in the specified environment. Accepts
        # multipart/form-data content type.
        sig do
          params(
            path: String,
            environment: String,
            file: HubspotSDK::Internal::FileInput,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::AssetFileMetadata)
        end
        def upsert(
          # Path param: The file system location of the file.
          path,
          # Path param: The environment of the file ("draft" or "published").
          environment:,
          # Body param:
          file: nil,
          request_options: {}
        )
        end

        # Validates the file contents passed to the endpoint given a specified path and
        # environment. Accepts multipart/form-data content type.
        sig do
          params(
            path: String,
            environment: String,
            file: HubspotSDK::Internal::FileInput,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def validate(
          # Path param: The file system location of the file.
          path,
          # Path param:
          environment:,
          # Body param:
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
