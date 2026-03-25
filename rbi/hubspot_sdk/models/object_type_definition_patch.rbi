# typed: strong

module HubspotSDK
  module Models
    class ObjectTypeDefinitionPatch < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::ObjectTypeDefinitionPatch,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :clear_description

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allows_sensitive_properties

      sig { params(allows_sensitive_properties: T::Boolean).void }
      attr_writer :allows_sensitive_properties

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

      sig { returns(T.nilable(String)) }
      attr_reader :primary_display_property

      sig { params(primary_display_property: String).void }
      attr_writer :primary_display_property

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :required_properties

      sig { params(required_properties: T::Array[String]).void }
      attr_writer :required_properties

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :restorable

      sig { params(restorable: T::Boolean).void }
      attr_writer :restorable

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :searchable_properties

      sig { params(searchable_properties: T::Array[String]).void }
      attr_writer :searchable_properties

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :secondary_display_properties

      sig { params(secondary_display_properties: T::Array[String]).void }
      attr_writer :secondary_display_properties

      sig do
        params(
          clear_description: T::Boolean,
          allows_sensitive_properties: T::Boolean,
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
        clear_description:,
        allows_sensitive_properties: nil,
        description: nil,
        labels: nil,
        primary_display_property: nil,
        required_properties: nil,
        restorable: nil,
        searchable_properties: nil,
        secondary_display_properties: nil
      )
      end

      sig do
        override.returns(
          {
            clear_description: T::Boolean,
            allows_sensitive_properties: T::Boolean,
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
