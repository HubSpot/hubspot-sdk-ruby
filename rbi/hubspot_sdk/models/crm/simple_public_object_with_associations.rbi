# typed: strong

module HubspotSDK
  module Models
    module Crm
      class SimplePublicObjectWithAssociations < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::SimplePublicObjectWithAssociations,
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

        # Key value pairs representing the properties of the object.
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

        # A list defining relationships with other objects.
        sig do
          returns(
            T.nilable(
              T::Hash[Symbol, HubspotSDK::Crm::CollectionResponseAssociatedID]
            )
          )
        end
        attr_reader :associations

        sig do
          params(
            associations:
              T::Hash[
                Symbol,
                HubspotSDK::Crm::CollectionResponseAssociatedID::OrHash
              ]
          ).void
        end
        attr_writer :associations

        # An identifier used for tracing the creation or update request of the object.
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

        # The URL on the API that provide direct navigation to the corresponding UI pages
        # for the connectors.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Represents a CRM object along with its properties, timestamps, and a set of
        # associated object IDs grouped by association type.
        sig do
          params(
            id: String,
            archived: T::Boolean,
            created_at: Time,
            properties: T::Hash[Symbol, T.nilable(String)],
            updated_at: Time,
            archived_at: Time,
            associations:
              T::Hash[
                Symbol,
                HubspotSDK::Crm::CollectionResponseAssociatedID::OrHash
              ],
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
          # Key value pairs representing the properties of the object.
          properties:,
          # The timestamp when the object was last updated, in ISO 8601 format.
          updated_at:,
          # The timestamp when the object was archived, in ISO 8601 format.
          archived_at: nil,
          # A list defining relationships with other objects.
          associations: nil,
          # An identifier used for tracing the creation or update request of the object.
          object_write_trace_id: nil,
          # Key-value pairs representing the properties of the object along with their
          # history.
          properties_with_history: nil,
          # The URL on the API that provide direct navigation to the corresponding UI pages
          # for the connectors.
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
              associations:
                T::Hash[
                  Symbol,
                  HubspotSDK::Crm::CollectionResponseAssociatedID
                ],
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
