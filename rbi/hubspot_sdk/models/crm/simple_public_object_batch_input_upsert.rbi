# typed: strong

module HubspotSDK
  module Models
    module CRM
      class SimplePublicObjectBatchInputUpsert < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::SimplePublicObjectBatchInputUpsert,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the object.
        sig { returns(String) }
        attr_accessor :id

        # Key value pairs representing the properties of the object.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        # The name of a property whose values are unique for this object
        sig { returns(T.nilable(String)) }
        attr_reader :id_property

        sig { params(id_property: String).void }
        attr_writer :id_property

        # An identifier for tracing the creation request.
        sig { returns(T.nilable(String)) }
        attr_reader :object_write_trace_id

        sig { params(object_write_trace_id: String).void }
        attr_writer :object_write_trace_id

        # Represents an object used in batch upsert operations, containing an object’s
        # unique identifier, its properties, and optionally the unique property name and a
        # write trace ID.
        sig do
          params(
            id: String,
            properties: T::Hash[Symbol, String],
            id_property: String,
            object_write_trace_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the object.
          id:,
          # Key value pairs representing the properties of the object.
          properties:,
          # The name of a property whose values are unique for this object
          id_property: nil,
          # An identifier for tracing the creation request.
          object_write_trace_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              object_write_trace_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
