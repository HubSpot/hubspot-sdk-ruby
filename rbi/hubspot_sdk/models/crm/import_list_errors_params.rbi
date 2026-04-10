# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ImportListErrorsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ImportListErrorsParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :import_id

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_error_message

        sig { params(include_error_message: T::Boolean).void }
        attr_writer :include_error_message

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
            import_id: Integer,
            after: String,
            include_error_message: T::Boolean,
            include_row_data: T::Boolean,
            limit: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          import_id:,
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

        sig do
          override.returns(
            {
              import_id: Integer,
              after: String,
              include_error_message: T::Boolean,
              include_row_data: T::Boolean,
              limit: Integer,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
