# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class PropertiesValidations
        # Read all properties with validation rules for a given object.
        #
        # @overload get_by_object_type_id(object_type_id, request_options: {})
        #
        # @param object_type_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PropertiesValidationGetByObjectTypeIDParams
        def get_by_object_type_id(object_type_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/property-validations/2026-03/%1$s", object_type_id],
            model: HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging,
            options: params[:request_options]
          )
        end

        # Read a property's validation rules identified by {propertyName}.
        #
        # @overload get_by_object_type_id_and_property_name(property_name, object_type_id:, request_options: {})
        #
        # @param property_name [String]
        # @param object_type_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PropertiesValidationGetByObjectTypeIDAndPropertyNameParams
        def get_by_object_type_id_and_property_name(property_name, params)
          parsed, options =
            HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDAndPropertyNameParams.dump_request(params)
          object_type_id =
            parsed.delete(:object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/property-validations/2026-03/%1$s/%2$s", object_type_id, property_name],
            model: HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging,
            options: options
          )
        end

        # Retrieve a specific validation rule for a property identified by its name and
        # rule type.
        #
        # @overload get_by_object_type_id_property_name_and_rule_type(rule_type, object_type_id:, property_name:, request_options: {})
        #
        # @param rule_type [Symbol, HubspotSDK::Models::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType]
        # @param object_type_id [String]
        # @param property_name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PublicPropertyValidationRule]
        #
        # @see HubspotSDK::Models::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams
        def get_by_object_type_id_property_name_and_rule_type(rule_type, params)
          parsed, options =
            HubspotSDK::Crm::PropertiesValidationGetByObjectTypeIDPropertyNameAndRuleTypeParams.dump_request(params)
          object_type_id =
            parsed.delete(:object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          property_name =
            parsed.delete(:property_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "crm/property-validations/2026-03/%1$s/%2$s/rule-type/%3$s",
              object_type_id,
              property_name,
              rule_type
            ],
            model: HubspotSDK::Crm::PublicPropertyValidationRule,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams}
        # for more details.
        #
        # Update a specific validation rule for a property identified by its name and rule
        # type.
        #
        # @overload update_by_object_type_id_property_name_and_rule_type(rule_type, object_type_id:, property_name:, rule_arguments:, should_apply_normalization: nil, request_options: {})
        #
        # @param rule_type [Symbol, HubspotSDK::Models::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams::RuleType] Path param
        #
        # @param object_type_id [String] Path param
        #
        # @param property_name [String] Path param
        #
        # @param rule_arguments [Array<String>] Body param: A list of arguments that define the constraints for the validation r
        #
        # @param should_apply_normalization [Boolean] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams
        def update_by_object_type_id_property_name_and_rule_type(rule_type, params)
          parsed, options =
            HubspotSDK::Crm::PropertiesValidationUpdateByObjectTypeIDPropertyNameAndRuleTypeParams.dump_request(
              params
            )
          object_type_id =
            parsed.delete(:object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          property_name =
            parsed.delete(:property_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: [
              "crm/property-validations/2026-03/%1$s/%2$s/rule-type/%3$s",
              object_type_id,
              property_name,
              rule_type
            ],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
