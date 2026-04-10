# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Properties
        # @return [HubSpotSDK::Resources::Crm::Properties::Batch]
        attr_reader :batch

        # @return [HubSpotSDK::Resources::Crm::Properties::Groups]
        attr_reader :groups

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Crm::PropertyCreateParams} for more details.
        #
        # Create and return a copy of a new property for the specified object type.
        #
        # @overload create(object_type, field_type:, group_name:, label:, name:, type:, calculation_formula: nil, currency_property_name: nil, data_sensitivity: nil, description: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, options: nil, referenced_object_type: nil, show_currency_symbol: nil, request_options: {})
        #
        # @param object_type [String]
        #
        # @param field_type [Symbol, HubSpotSDK::Models::Crm::PropertyCreate::FieldType] Controls how the property appears in HubSpot.
        #
        # @param group_name [String] The name of the property group the property belongs to.
        #
        # @param label [String] A human-readable property label that will be shown in HubSpot.
        #
        # @param name [String] The internal property name, which must be used when referencing the property via
        #
        # @param type [Symbol, HubSpotSDK::Models::Crm::PropertyCreate::Type] The data type of the property.
        #
        # @param calculation_formula [String] Represents a formula that is used to compute a calculated property.
        #
        # @param currency_property_name [String]
        #
        # @param data_sensitivity [Symbol, HubSpotSDK::Models::Crm::PropertyCreate::DataSensitivity] Indicates the sensitivity level of the property, with options: highly_sensitive,
        #
        # @param description [String] A description of the property that will be shown as help text in HubSpot.
        #
        # @param display_order [Integer] Properties are displayed in order starting with the lowest positive integer valu
        #
        # @param external_options [Boolean] Applicable only for 'enumeration' type properties. Should be set to true in con
        #
        # @param form_field [Boolean] Whether or not the property can be used in a HubSpot form.
        #
        # @param has_unique_value [Boolean] Whether or not the property's value must be unique. Once set, this can't be chan
        #
        # @param hidden [Boolean] If true, the property won't be visible and can't be used in HubSpot.
        #
        # @param options [Array<HubSpotSDK::Models::OptionInput>] A list of valid options for the property. This field is required for enumerated
        #
        # @param referenced_object_type [String] Should be set to 'OWNER' when 'externalOptions' is true, which causes the proper
        #
        # @param show_currency_symbol [Boolean]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::Property]
        #
        # @see HubSpotSDK::Models::Crm::PropertyCreateParams
        def create(object_type, params)
          parsed, options = HubSpotSDK::Crm::PropertyCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["crm/properties/2026-03/%1$s", object_type],
            body: parsed,
            model: HubSpotSDK::Crm::Property,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Crm::PropertyUpdateParams} for more details.
        #
        # Perform a partial update of a property identified by { propertyName }. Provided
        # fields will be overwritten.
        #
        # @overload update(property_name, object_type:, calculation_formula: nil, currency_property_name: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, hidden: nil, label: nil, options: nil, show_currency_symbol: nil, type: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param calculation_formula [String] Body param: Represents a formula that is used to compute a calculated property.
        #
        # @param currency_property_name [String] Body param
        #
        # @param description [String] Body param: A description of the property that will be shown as help text in Hub
        #
        # @param display_order [Integer] Body param: Properties are displayed in order starting with the lowest positive
        #
        # @param field_type [Symbol, HubSpotSDK::Models::Crm::PropertyUpdate::FieldType] Body param: Controls how the property appears in HubSpot.
        #
        # @param form_field [Boolean] Body param: Whether or not the property can be used in a HubSpot form.
        #
        # @param group_name [String] Body param: The name of the property group the property belongs to.
        #
        # @param hidden [Boolean] Body param: If true, the property won't be visible and can't be used in HubSpot.
        #
        # @param label [String] Body param: A human-readable property label that will be shown in HubSpot.
        #
        # @param options [Array<HubSpotSDK::Models::OptionInput>] Body param: A list of valid options for the property.
        #
        # @param show_currency_symbol [Boolean] Body param
        #
        # @param type [Symbol, HubSpotSDK::Models::Crm::PropertyUpdate::Type] Body param: The data type of the property.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::Property]
        #
        # @see HubSpotSDK::Models::Crm::PropertyUpdateParams
        def update(property_name, params)
          parsed, options = HubSpotSDK::Crm::PropertyUpdateParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["crm/properties/2026-03/%1$s/%2$s", object_type, property_name],
            body: parsed,
            model: HubSpotSDK::Crm::Property,
            options: options
          )
        end

        # Read all existing properties for the specified object type and HubSpot account.
        #
        # @overload list(object_type, archived: nil, data_sensitivity: nil, locale: nil, properties: nil, request_options: {})
        #
        # @param object_type [String]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param data_sensitivity [Symbol, HubSpotSDK::Models::Crm::PropertyListParams::DataSensitivity]
        #
        # @param locale [String]
        #
        # @param properties [String]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::CollectionResponsePropertyNoPaging]
        #
        # @see HubSpotSDK::Models::Crm::PropertyListParams
        def list(object_type, params = {})
          parsed, options = HubSpotSDK::Crm::PropertyListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/properties/2026-03/%1$s", object_type],
            query: query.transform_keys(data_sensitivity: "dataSensitivity"),
            model: HubSpotSDK::Crm::CollectionResponsePropertyNoPaging,
            options: options
          )
        end

        # Move a property identified by {propertyName} to the recycling bin.
        #
        # @overload delete(property_name, object_type:, request_options: {})
        #
        # @param property_name [String]
        # @param object_type [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Crm::PropertyDeleteParams
        def delete(property_name, params)
          parsed, options = HubSpotSDK::Crm::PropertyDeleteParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["crm/properties/2026-03/%1$s/%2$s", object_type, property_name],
            model: NilClass,
            options: options
          )
        end

        # Read a property identified by {propertyName}.
        #
        # @overload get(property_name, object_type:, archived: nil, data_sensitivity: nil, locale: nil, properties: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param archived [Boolean] Query param: Whether to return only results that have been archived.
        #
        # @param data_sensitivity [Symbol, HubSpotSDK::Models::Crm::PropertyGetParams::DataSensitivity] Query param
        #
        # @param locale [String] Query param
        #
        # @param properties [String] Query param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::Property]
        #
        # @see HubSpotSDK::Models::Crm::PropertyGetParams
        def get(property_name, params)
          parsed, options = HubSpotSDK::Crm::PropertyGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/properties/2026-03/%1$s/%2$s", object_type, property_name],
            query: query.transform_keys(data_sensitivity: "dataSensitivity"),
            model: HubSpotSDK::Crm::Property,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::Crm::Properties::Batch.new(client: client)
          @groups = HubSpotSDK::Resources::Crm::Properties::Groups.new(client: client)
        end
      end
    end
  end
end
