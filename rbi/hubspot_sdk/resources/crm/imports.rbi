# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Imports
        sig do
          params(
            files: HubSpotSDK::Internal::FileInput,
            import_request: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PublicImportResponse)
        end
        def create(files: nil, import_request: nil, request_options: {})
        end

        sig do
          params(
            after: String,
            limit: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[HubSpotSDK::Crm::PublicImportResponse]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          params(
            import_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::ActionResponse)
        end
        def cancel(import_id, request_options: {})
        end

        sig do
          params(
            import_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PublicImportResponse)
        end
        def get(import_id, request_options: {})
        end

        sig do
          params(
            import_id: Integer,
            after: String,
            include_error_message: T::Boolean,
            include_row_data: T::Boolean,
            limit: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[HubSpotSDK::Crm::PublicImportError]
          )
        end
        def list_errors(
          import_id,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          include_error_message: nil,
          include_row_data: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
