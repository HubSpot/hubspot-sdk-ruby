# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class PropertyValidations
        # Read all properties with validation rules for a given object.
        #
        # @overload list(object_type_id, request_options: {})
        #
        # @param object_type_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PropertyValidationListParams
        def list(object_type_id, params = {})
          @client.request(
            method: :get,
            path: ["crm/v3/property-validations/%1$s", object_type_id],
            model: HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging,
            options: params[:request_options]
          )
        end

        # Read a property's validation rules identified by {propertyName}.
        #
        # @overload get(property_name, object_type_id:, request_options: {})
        #
        # @param property_name [String]
        # @param object_type_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PropertyValidationGetParams
        def get(property_name, params)
          parsed, options = HubspotSDK::Crm::PropertyValidationGetParams.dump_request(params)
          object_type_id =
            parsed.delete(:object_type_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/v3/property-validations/%1$s/%2$s", object_type_id, property_name],
            model: HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging,
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
