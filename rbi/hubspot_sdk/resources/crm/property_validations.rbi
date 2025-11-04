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
        def list(object_type_id, request_options: {})
        end

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
          # Path param:
          rule_type,
          # Path param:
          object_type_id:,
          # Path param:
          property_name:,
          # Body param:
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
        def get(property_name, object_type_id:, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
