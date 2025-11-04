# typed: strong

module HubspotSDK
  module Models
    module Crm
      class SimplePublicObjectBatchInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::SimplePublicObjectBatchInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the object.
        sig { returns(String) }
        attr_accessor :id

        # Key-value pairs representing the properties of the object.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        # The name of a unique identifier property, which can be used for identifying
        # objects instead of the object ID.
        sig { returns(T.nilable(String)) }
        attr_reader :id_property

        sig { params(id_property: String).void }
        attr_writer :id_property

        # A unique identifier for tracing the request.
        sig { returns(T.nilable(String)) }
        attr_reader :object_write_trace_id

        sig { params(object_write_trace_id: String).void }
        attr_writer :object_write_trace_id

        # Contains an array of CRM object records to be processed in a batch operation,
        # each defined by their ID and properties.
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
          # Key-value pairs representing the properties of the object.
          properties:,
          # The name of a unique identifier property, which can be used for identifying
          # objects instead of the object ID.
          id_property: nil,
          # A unique identifier for tracing the request.
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
