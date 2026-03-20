# typed: strong

module HubspotSDK
  module Models
    module Crm
      class SimplePublicObject < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::SimplePublicObject,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the object.
        sig { returns(String) }
        attr_accessor :id

        # Whether the object is archived.
        sig { returns(T::Boolean) }
        attr_accessor :archived

        # The timestamp when the object was created, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :created_at

        # Key-value pairs representing the properties of the object.
        sig { returns(T::Hash[Symbol, T.nilable(String)]) }
        attr_accessor :properties

        # The timestamp when the object was last updated, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The timestamp when the object was archived, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        # An identifier used for tracing the write request for the object.
        sig { returns(T.nilable(String)) }
        attr_reader :object_write_trace_id

        sig { params(object_write_trace_id: String).void }
        attr_writer :object_write_trace_id

        # Key-value pairs representing the properties of the object along with their
        # history.
        sig do
          returns(
            T.nilable(
              T::Hash[Symbol, T::Array[HubspotSDK::Crm::ValueWithTimestamp]]
            )
          )
        end
        attr_reader :properties_with_history

        sig do
          params(
            properties_with_history:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::Crm::ValueWithTimestamp::OrHash]
              ]
          ).void
        end
        attr_writer :properties_with_history

        # The URL associated with the object.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # A simple public object.
        sig do
          params(
            id: String,
            archived: T::Boolean,
            created_at: Time,
            properties: T::Hash[Symbol, T.nilable(String)],
            updated_at: Time,
            archived_at: Time,
            object_write_trace_id: String,
            properties_with_history:
              T::Hash[
                Symbol,
                T::Array[HubspotSDK::Crm::ValueWithTimestamp::OrHash]
              ],
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the object.
          id:,
          # Whether the object is archived.
          archived:,
          # The timestamp when the object was created, in ISO 8601 format.
          created_at:,
          # Key-value pairs representing the properties of the object.
          properties:,
          # The timestamp when the object was last updated, in ISO 8601 format.
          updated_at:,
          # The timestamp when the object was archived, in ISO 8601 format.
          archived_at: nil,
          # An identifier used for tracing the write request for the object.
          object_write_trace_id: nil,
          # Key-value pairs representing the properties of the object along with their
          # history.
          properties_with_history: nil,
          # The URL associated with the object.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              created_at: Time,
              properties: T::Hash[Symbol, T.nilable(String)],
              updated_at: Time,
              archived_at: Time,
              object_write_trace_id: String,
              properties_with_history:
                T::Hash[Symbol, T::Array[HubspotSDK::Crm::ValueWithTimestamp]],
              url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
