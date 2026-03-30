# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class PropertiesValidations
        # Read all properties with validation rules for a given object.
        sig do
          params(
            object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging
          )
        end
        def get_by_object_type_id(object_type_id, request_options: {})
        end

        # Read a property's validation rules identified by {propertyName}.
        sig do
          params(
            property_name: String,
            object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging
          )
        end
        def get_by_object_type_id_and_property_name(
          property_name,
          object_type_id:,
          request_options: {}
        )
        end

        # Retrieve a specific validation rule for a property identified by its name and
        # rule type.
        sig do
          params(
            rule_type:
              HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol,
            object_type_id: String,
            property_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PublicPropertyValidationRule)
        end
        def get_by_object_type_id_property_name_and_rule_type(
          rule_type,
          object_type_id:,
          property_name:,
          request_options: {}
        )
        end

        # Update a specific validation rule for a property identified by its name and rule
        # type.
        sig do
          params(
            rule_type:
              HubspotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType::OrSymbol,
            object_type_id: String,
            property_name: String,
            rule_arguments: T::Array[String],
            should_apply_normalization: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def update_by_object_type_id_property_name_and_rule_type(
          # Path param
          rule_type,
          # Path param
          object_type_id:,
          # Path param
          property_name:,
          # Body param: A list of arguments that define the constraints for the validation
          # rule.
          rule_arguments:,
          # Body param
          should_apply_normalization: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
