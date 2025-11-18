# typed: strong

module HubspotSDK
  module Models
    module Crm
      ObjectsDealSplitsSimplePublicObject =
        Objects::ObjectsDealSplitsSimplePublicObject

      module Objects
        class ObjectsDealSplitsSimplePublicObject < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::ObjectsDealSplitsSimplePublicObject,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The unique ID of the object.
          sig { returns(String) }
          attr_accessor :id

          # The timestamp when the object was created, in ISO 8601 format.
          sig { returns(Time) }
          attr_accessor :created_at

          # Key-value pairs representing the properties of the object.
          sig { returns(T::Hash[Symbol, T.nilable(String)]) }
          attr_accessor :properties

          # The timestamp when the object was last updated, in ISO 8601 format.
          sig { returns(Time) }
          attr_accessor :updated_at

          # Whether the object is archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # The timestamp when the object was archived, in ISO 8601 format.
          sig { returns(T.nilable(Time)) }
          attr_reader :archived_at

          sig { params(archived_at: Time).void }
          attr_writer :archived_at

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

          # A simple public object.
          sig do
            params(
              id: String,
              created_at: Time,
              properties: T::Hash[Symbol, T.nilable(String)],
              updated_at: Time,
              archived: T::Boolean,
              archived_at: Time,
              properties_with_history:
                T::Hash[
                  Symbol,
                  T::Array[HubspotSDK::Crm::ValueWithTimestamp::OrHash]
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique ID of the object.
            id:,
            # The timestamp when the object was created, in ISO 8601 format.
            created_at:,
            # Key-value pairs representing the properties of the object.
            properties:,
            # The timestamp when the object was last updated, in ISO 8601 format.
            updated_at:,
            # Whether the object is archived.
            archived: nil,
            # The timestamp when the object was archived, in ISO 8601 format.
            archived_at: nil,
            # Key-value pairs representing the properties of the object along with their
            # history.
            properties_with_history: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                properties: T::Hash[Symbol, T.nilable(String)],
                updated_at: Time,
                archived: T::Boolean,
                archived_at: Time,
                properties_with_history:
                  T::Hash[Symbol, T::Array[HubspotSDK::Crm::ValueWithTimestamp]]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
