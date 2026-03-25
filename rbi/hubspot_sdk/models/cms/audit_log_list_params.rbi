# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AuditLogListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::AuditLogListParams,
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

        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :event_type

        sig { params(event_type: T::Array[String]).void }
        attr_writer :event_type

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :object_id_

        sig { params(object_id_: T::Array[String]).void }
        attr_writer :object_id_

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :object_type

        sig { params(object_type: T::Array[String]).void }
        attr_writer :object_type

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :user_id

        sig { params(user_id: T::Array[String]).void }
        attr_writer :user_id

        sig do
          params(
            after: String,
            before: String,
            event_type: T::Array[String],
            limit: Integer,
            object_id_: T::Array[String],
            object_type: T::Array[String],
            sort: T::Array[String],
            user_id: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          event_type: nil,
          # The maximum number of results to display per page.
          limit: nil,
          object_id_: nil,
          object_type: nil,
          sort: nil,
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              after: String,
              before: String,
              event_type: T::Array[String],
              limit: Integer,
              object_id_: T::Array[String],
              object_type: T::Array[String],
              sort: T::Array[String],
              user_id: T::Array[String],
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
