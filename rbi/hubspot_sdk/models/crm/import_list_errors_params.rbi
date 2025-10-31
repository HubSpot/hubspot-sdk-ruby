# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ImportListErrorsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::ImportListErrorsParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Set to True to receive a message explaining the error.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_error_message

        sig { params(include_error_message: T::Boolean).void }
        attr_writer :include_error_message

        # Set to True to receive the data values for the errored row.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_row_data

        sig { params(include_row_data: T::Boolean).void }
        attr_writer :include_row_data

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            after: String,
            include_error_message: T::Boolean,
            include_row_data: T::Boolean,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
              after: String,
              include_error_message: T::Boolean,
              include_row_data: T::Boolean,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
