# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Exports
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

        sig do
          params(
            export_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PublicExportResponse)
        end
        def get(export_id, request_options: {})
        end

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
