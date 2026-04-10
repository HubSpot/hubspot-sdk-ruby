# typed: strong

module HubSpotSDK
  module Models
    module Account
      class ActivityListAuditLogsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Account::ActivityListAuditLogsParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :acting_user_id

        sig { params(acting_user_id: T::Array[Integer]).void }
        attr_writer :acting_user_id

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :fill_final_timestamp

        sig { params(fill_final_timestamp: T::Boolean).void }
        attr_writer :fill_final_timestamp

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_after

        sig { params(occurred_after: Time).void }
        attr_writer :occurred_after

        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_before

        sig { params(occurred_before: Time).void }
        attr_writer :occurred_before

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig do
          params(
            acting_user_id: T::Array[Integer],
            after: String,
            fill_final_timestamp: T::Boolean,
            limit: Integer,
            occurred_after: Time,
            occurred_before: Time,
            sort: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          acting_user_id: nil,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          fill_final_timestamp: nil,
          # The maximum number of results to display per page.
          limit: nil,
          occurred_after: nil,
          occurred_before: nil,
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              acting_user_id: T::Array[Integer],
              after: String,
              fill_final_timestamp: T::Boolean,
              limit: Integer,
              occurred_after: Time,
              occurred_before: Time,
              sort: T::Array[String],
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
