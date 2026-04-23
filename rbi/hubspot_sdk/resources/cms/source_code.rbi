# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class SourceCode
        # Extract a zip file in the developer file system. Extraction status can be
        # checked with the `/extract/async/tasks/taskId/status` endpoint below.
        sig do
          params(
            path: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::TaskLocator)
        end
        def extract_async(
          # The file system location where the zip file is to be extracted.
          path:,
          request_options: {}
        )
        end

        # Get the status of an extraction by the `taskId` returned from the initial
        # `extract/async` request.
        sig do
          params(
            task_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::ActionResponse)
        end
        def get_extraction_status(task_id, request_options: {})
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
