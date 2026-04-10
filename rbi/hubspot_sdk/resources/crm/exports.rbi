# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Exports
        # Begins exporting CRM data for the portal as specified in the request body
        sig do
          params(
            public_export_request:
              T.any(
                HubSpotSDK::Crm::PublicExportViewRequest::OrHash,
                HubSpotSDK::Crm::PublicExportListRequest::OrHash
              ),
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::TaskLocator)
        end
        def create_async(public_export_request:, request_options: {})
        end

        # Retrieve detailed information about a specific CRM export, including its current
        # state and properties.
        sig do
          params(
            export_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PublicExportResponse)
        end
        def get(export_id, request_options: {})
        end

        # Returns the status of the export with taskId, including the URL of the resulting
        # file if the export status is COMPLETE
        sig do
          params(
            task_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ActionResponseWithSingleResultUri)
        end
        def get_status(task_id, request_options: {})
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
