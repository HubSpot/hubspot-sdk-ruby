# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class PropertyValidations
        # Read all properties with validation rules for a given object.
        sig do
          params(
            object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging
          )
        end
        def list(
          # The ID of the object type for which all property validation rules are being
          # retrieved.
          object_type_id,
          request_options: {}
        )
        end

        # Update a specific validation rule for a property identified by its name and rule
        # type.
        sig do
          params(
            rule_type:
              HubspotSDK::Crm::PropertyValidationCrmV3PropertyValidationsObjectTypeIDPropertyNameRuleTypeRuleTypeParams::RuleType::OrSymbol,
            object_type_id: String,
            property_name: String,
            rule_arguments: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def crm_v3_property_validations_object_type_id_property_name_rule_type_rule_type(
          # Path param: The type of validation rule being updated, such as FORMAT,
          # ALPHANUMERIC, or MAX_LENGTH.
          rule_type,
          # Path param: The ID of the object type to which the property belongs.
          object_type_id:,
          # Path param: The name of the property for which the validation rule is being
          # updated.
          property_name:,
          # Body param: A list of arguments that define the constraints for the validation
          # rule.
          rule_arguments:,
          request_options: {}
        )
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
        def get(
          # The name of the property whose validation rules are being retrieved.
          property_name,
          # The ID of the object type to which the property belongs.
          object_type_id:,
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
