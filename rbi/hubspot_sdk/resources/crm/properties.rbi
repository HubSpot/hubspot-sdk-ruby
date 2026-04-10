# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Properties
        sig { returns(HubSpotSDK::Resources::Crm::Properties::Batch) }
        attr_reader :batch

        sig { returns(HubSpotSDK::Resources::Crm::Properties::Groups) }
        attr_reader :groups

        # Create and return a copy of a new property for the specified object type.
        sig do
          params(
            object_type: String,
            field_type: HubSpotSDK::Crm::PropertyCreate::FieldType::OrSymbol,
            group_name: String,
            label: String,
            name: String,
            type: HubSpotSDK::Crm::PropertyCreate::Type::OrSymbol,
            calculation_formula: String,
            currency_property_name: String,
            data_sensitivity:
              HubSpotSDK::Crm::PropertyCreate::DataSensitivity::OrSymbol,
            description: String,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
            referenced_object_type: String,
            show_currency_symbol: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::Property)
        end
        def create(
          object_type,
          # Controls how the property appears in HubSpot.
          field_type:,
          # The name of the property group the property belongs to.
          group_name:,
          # A human-readable property label that will be shown in HubSpot.
          label:,
          # The internal property name, which must be used when referencing the property via
          # the API.
          name:,
          # The data type of the property.
          type:,
          # Represents a formula that is used to compute a calculated property.
          calculation_formula: nil,
          currency_property_name: nil,
          # Indicates the sensitivity level of the property, with options: highly_sensitive,
          # non_sensitive, or sensitive.
          data_sensitivity: nil,
          # A description of the property that will be shown as help text in HubSpot.
          description: nil,
          # Properties are displayed in order starting with the lowest positive integer
          # value. Values of -1 will cause the property to be displayed after any positive
          # values.
          display_order: nil,
          # Applicable only for 'enumeration' type properties. Should be set to true in
          # conjunction with a 'referencedObjectType' of 'OWNER'. Otherwise false.
          external_options: nil,
          # Whether or not the property can be used in a HubSpot form.
          form_field: nil,
          # Whether or not the property's value must be unique. Once set, this can't be
          # changed.
          has_unique_value: nil,
          # If true, the property won't be visible and can't be used in HubSpot.
          hidden: nil,
          # A list of valid options for the property. This field is required for enumerated
          # properties.
          options: nil,
          # Should be set to 'OWNER' when 'externalOptions' is true, which causes the
          # property to dynamically pull option values from the current HubSpot users.
          referenced_object_type: nil,
          show_currency_symbol: nil,
          request_options: {}
        )
        end

        # Perform a partial update of a property identified by { propertyName }. Provided
        # fields will be overwritten.
        sig do
          params(
            property_name: String,
            object_type: String,
            calculation_formula: String,
            currency_property_name: String,
            description: String,
            display_order: Integer,
            field_type: HubSpotSDK::Crm::PropertyUpdate::FieldType::OrSymbol,
            form_field: T::Boolean,
            group_name: String,
            hidden: T::Boolean,
            label: String,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
            show_currency_symbol: T::Boolean,
            type: HubSpotSDK::Crm::PropertyUpdate::Type::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::Property)
        end
        def update(
          # Path param
          property_name,
          # Path param
          object_type:,
          # Body param: Represents a formula that is used to compute a calculated property.
          calculation_formula: nil,
          # Body param
          currency_property_name: nil,
          # Body param: A description of the property that will be shown as help text in
          # HubSpot.
          description: nil,
          # Body param: Properties are displayed in order starting with the lowest positive
          # integer value. Values of -1 will cause the Property to be displayed after any
          # positive values.
          display_order: nil,
          # Body param: Controls how the property appears in HubSpot.
          field_type: nil,
          # Body param: Whether or not the property can be used in a HubSpot form.
          form_field: nil,
          # Body param: The name of the property group the property belongs to.
          group_name: nil,
          # Body param: If true, the property won't be visible and can't be used in HubSpot.
          hidden: nil,
          # Body param: A human-readable property label that will be shown in HubSpot.
          label: nil,
          # Body param: A list of valid options for the property.
          options: nil,
          # Body param
          show_currency_symbol: nil,
          # Body param: The data type of the property.
          type: nil,
          request_options: {}
        )
        end

        # Read all existing properties for the specified object type and HubSpot account.
        sig do
          params(
            object_type: String,
            archived: T::Boolean,
            data_sensitivity:
              HubSpotSDK::Crm::PropertyListParams::DataSensitivity::OrSymbol,
            locale: String,
            properties: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::CollectionResponsePropertyNoPaging)
        end
        def list(
          object_type,
          # Whether to return only results that have been archived.
          archived: nil,
          data_sensitivity: nil,
          locale: nil,
          properties: nil,
          request_options: {}
        )
        end

        # Move a property identified by {propertyName} to the recycling bin.
        sig do
          params(
            property_name: String,
            object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(property_name, object_type:, request_options: {})
        end

        # Read a property identified by {propertyName}.
        sig do
          params(
            property_name: String,
            object_type: String,
            archived: T::Boolean,
            data_sensitivity:
              HubSpotSDK::Crm::PropertyGetParams::DataSensitivity::OrSymbol,
            locale: String,
            properties: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::Property)
        end
        def get(
          # Path param
          property_name,
          # Path param
          object_type:,
          # Query param: Whether to return only results that have been archived.
          archived: nil,
          # Query param
          data_sensitivity: nil,
          # Query param
          locale: nil,
          # Query param
          properties: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
