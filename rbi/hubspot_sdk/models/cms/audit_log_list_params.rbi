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

        # Timestamp after which audit logs will be returned
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Timestamp before which audit logs will be returned
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Comma separated list of event types to filter by (CREATED, UPDATED, PUBLISHED,
        # DELETED, UNPUBLISHED).
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :event_type

        sig { params(event_type: T::Array[String]).void }
        attr_writer :event_type

        # The number of logs to return.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Comma separated list of object ids to filter by.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :object_id_

        sig { params(object_id_: T::Array[String]).void }
        attr_writer :object_id_

        # Comma separated list of object types to filter by (BLOG, LANDING_PAGE, DOMAIN,
        # HUBDB_TABLE etc.)
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :object_type

        sig { params(object_type: T::Array[String]).void }
        attr_writer :object_type

        # The sort direction for the audit logs. (Can only sort by timestamp).
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        # Comma separated list of user ids to filter by.
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
          # Timestamp after which audit logs will be returned
          after: nil,
          # Timestamp before which audit logs will be returned
          before: nil,
          # Comma separated list of event types to filter by (CREATED, UPDATED, PUBLISHED,
          # DELETED, UNPUBLISHED).
          event_type: nil,
          # The number of logs to return.
          limit: nil,
          # Comma separated list of object ids to filter by.
          object_id_: nil,
          # Comma separated list of object types to filter by (BLOG, LANDING_PAGE, DOMAIN,
          # HUBDB_TABLE etc.)
          object_type: nil,
          # The sort direction for the audit logs. (Can only sort by timestamp).
          sort: nil,
          # Comma separated list of user ids to filter by.
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
