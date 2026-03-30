# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Exports
        # Begins exporting CRM data for the portal as specified in the request body
        sig do
          params(
            public_export_request:
              T.any(
                HubspotSDK::Crm::PublicExportViewRequest::OrHash,
                HubspotSDK::Crm::PublicExportListRequest::OrHash
              ),
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::TaskLocator)
        end
        def create_async(public_export_request:, request_options: {})
        end

        # Retrieve detailed information about a specific CRM export, including its current
        # state and properties.
        sig do
          params(
            export_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PublicExportResponse)
        end
        def get(export_id, request_options: {})
        end

        # Returns the status of the export with taskId, including the URL of the resulting
        # file if the export status is COMPLETE
        sig do
          params(
            task_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ActionResponseWithSingleResultUri)
        end
        def get_status(task_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
