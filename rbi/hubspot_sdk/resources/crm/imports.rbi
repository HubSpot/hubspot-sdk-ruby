# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Imports
        # Begins importing data from the specified file resources. This uploads the
        # corresponding file and uses the import request object to convert rows in the
        # files to objects.
        sig do
          params(
            files: HubspotSDK::Internal::FileInput,
            import_request: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PublicImportResponse)
        end
        def create(files: nil, import_request: nil, request_options: {})
        end

        # Returns a paged list of active imports for this account.
        sig do
          params(
            after: String,
            before: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Crm::PublicImportResponse]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # This allows a developer to cancel an active import.
        sig do
          params(
            import_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::ActionResponse)
        end
        def cancel(import_id, request_options: {})
        end

        # A complete summary of an import record, including any updates.
        sig do
          params(
            import_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PublicImportResponse)
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Crm::PublicImportError]
          )
        end
        def list_errors(
          import_id,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Set to True to receive a message explaining the error.
          include_error_message: nil,
          # Set to True to receive the data values for the errored row.
          include_row_data: nil,
          # The maximum number of results to display per page.
          limit: nil,
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
