# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class ObjectTypeDefinitionPatch < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::ObjectTypeDefinitionPatch,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :clear_description

          sig { params(clear_description: T::Boolean).void }
          attr_writer :clear_description

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(HubspotSDK::ObjectTypeDefinitionLabels)) }
          attr_reader :labels

          sig do
            params(labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash).void
          end
          attr_writer :labels

          # The name of the primary property for this object. This will be displayed as
          # primary on the HubSpot record page for this object type.
          sig { returns(T.nilable(String)) }
          attr_reader :primary_display_property

          sig { params(primary_display_property: String).void }
          attr_writer :primary_display_property

          # The names of properties that should be **required** when creating an object of
          # this type.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :required_properties

          sig { params(required_properties: T::Array[String]).void }
          attr_writer :required_properties

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :restorable

          sig { params(restorable: T::Boolean).void }
          attr_writer :restorable

          # Names of properties that will be indexed for this object type in by HubSpot's
          # product search.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :searchable_properties

          sig { params(searchable_properties: T::Array[String]).void }
          attr_writer :searchable_properties

          # The names of secondary properties for this object. These will be displayed as
          # secondary on the HubSpot record page for this object type.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :secondary_display_properties

          sig { params(secondary_display_properties: T::Array[String]).void }
          attr_writer :secondary_display_properties

          # Defines attributes to update on an object type.
          sig do
            params(
              clear_description: T::Boolean,
              description: String,
              labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
              primary_display_property: String,
              required_properties: T::Array[String],
              restorable: T::Boolean,
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            clear_description: nil,
            description: nil,
            labels: nil,
            # The name of the primary property for this object. This will be displayed as
            # primary on the HubSpot record page for this object type.
            primary_display_property: nil,
            # The names of properties that should be **required** when creating an object of
            # this type.
            required_properties: nil,
            restorable: nil,
            # Names of properties that will be indexed for this object type in by HubSpot's
            # product search.
            searchable_properties: nil,
            # The names of secondary properties for this object. These will be displayed as
            # secondary on the HubSpot record page for this object type.
            secondary_display_properties: nil
          )
          end

          sig do
            override.returns(
              {
                clear_description: T::Boolean,
                description: String,
                labels: HubspotSDK::ObjectTypeDefinitionLabels,
                primary_display_property: String,
                required_properties: T::Array[String],
                restorable: T::Boolean,
                searchable_properties: T::Array[String],
                secondary_display_properties: T::Array[String]
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
