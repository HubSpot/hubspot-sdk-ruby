# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchReadInputSimplePublicObjectID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchReadInputSimplePublicObjectID,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::SimplePublicObjectID]) }
        attr_accessor :inputs

        # Key-value pairs for setting properties for the new object.
        sig { returns(T::Array[String]) }
        attr_accessor :properties

        # Key-value pairs for setting properties for the new object and their histories.
        sig { returns(T::Array[String]) }
        attr_accessor :properties_with_history

        # When using a custom unique value property to retrieve records, the name of the
        # property. Do not include this parameter if retrieving by record ID.
        sig { returns(T.nilable(String)) }
        attr_reader :id_property

        sig { params(id_property: String).void }
        attr_writer :id_property

        # Specifies the input for reading a batch of CRM objects, including arrays of
        # object IDs, requested property names (with optional history), and an optional
        # unique identifying property.
        sig do
          params(
            inputs: T::Array[HubspotSDK::CRM::SimplePublicObjectID::OrHash],
            properties: T::Array[String],
            properties_with_history: T::Array[String],
            id_property: String
          ).returns(T.attached_class)
        end
        def self.new(
          inputs:,
          # Key-value pairs for setting properties for the new object.
          properties:,
          # Key-value pairs for setting properties for the new object and their histories.
          properties_with_history:,
          # When using a custom unique value property to retrieve records, the name of the
          # property. Do not include this parameter if retrieving by record ID.
          id_property: nil
        )
        end

        sig do
          override.returns(
            {
              inputs: T::Array[HubspotSDK::CRM::SimplePublicObjectID],
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              id_property: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
