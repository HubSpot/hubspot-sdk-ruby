# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Properties
        # @return [HubspotSDK::Resources::Crm::Properties::Batch]
        attr_reader :batch

        # @return [HubspotSDK::Resources::Crm::Properties::Groups]
        attr_reader :groups

        # Create and return a copy of a new property for the specified object type.
        #
        # @overload create(object_type, field_type:, group_name:, label:, name:, type:, calculation_formula: nil, data_sensitivity: nil, description: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, options: nil, referenced_object_type: nil, request_options: {})
        #
        # @param object_type [String]
        # @param field_type [Symbol, HubspotSDK::Models::PropertyCreate::FieldType]
        # @param group_name [String]
        # @param label [String]
        # @param name [String]
        # @param type [Symbol, HubspotSDK::Models::PropertyCreate::Type]
        # @param calculation_formula [String]
        # @param data_sensitivity [Symbol, HubspotSDK::Models::PropertyCreate::DataSensitivity]
        # @param description [String]
        # @param display_order [Integer]
        # @param external_options [Boolean]
        # @param form_field [Boolean]
        # @param has_unique_value [Boolean]
        # @param hidden [Boolean]
        # @param options [Array<HubspotSDK::Models::OptionInput>]
        # @param referenced_object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Property]
        #
        # @see HubspotSDK::Models::Crm::PropertyCreateParams
        def create(object_type, params)
          parsed, options = HubspotSDK::Crm::PropertyCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["crm/properties/2026-03/%1$s", object_type],
            body: parsed,
            model: HubspotSDK::Property,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::PropertyUpdateParams} for more details.
        #
        # Perform a partial update of a property identified by { propertyName }. Provided
        # fields will be overwritten.
        #
        # @overload update(property_name, object_type:, calculation_formula: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, hidden: nil, label: nil, options: nil, type: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param calculation_formula [String] Body param: Represents a formula that is used to compute a calculated property.
        #
        # @param description [String] Body param: A description of the property that will be shown as help text in Hub
        #
        # @param display_order [Integer] Body param: Properties are displayed in order starting with the lowest positive
        #
        # @param field_type [Symbol, HubspotSDK::Models::Crm::PropertyUpdate::FieldType] Body param: Controls how the property appears in HubSpot.
        #
        # @param form_field [Boolean] Body param: Whether or not the property can be used in a HubSpot form.
        #
        # @param group_name [String] Body param: The name of the property group the property belongs to.
        #
        # @param hidden [Boolean] Body param: If true, the property won't be visible and can't be used in HubSpot.
        #
        # @param label [String] Body param: A human-readable property label that will be shown in HubSpot.
        #
        # @param options [Array<HubspotSDK::Models::OptionInput>] Body param: A list of valid options for the property.
        #
        # @param type [Symbol, HubspotSDK::Models::Crm::PropertyUpdate::Type] Body param: The data type of the property.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Property]
        #
        # @see HubspotSDK::Models::Crm::PropertyUpdateParams
        def update(property_name, params)
          parsed, options = HubspotSDK::Crm::PropertyUpdateParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["crm/properties/2026-03/%1$s/%2$s", object_type, property_name],
            body: parsed,
            model: HubspotSDK::Property,
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
        # @param data_sensitivity [Symbol, HubspotSDK::Models::Crm::PropertyListParams::DataSensitivity]
        #
        # @param locale [String]
        #
        # @param properties [String]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::CollectionResponsePropertyNoPaging]
        #
        # @see HubspotSDK::Models::Crm::PropertyListParams
        def list(object_type, params = {})
          parsed, options = HubspotSDK::Crm::PropertyListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["crm/properties/2026-03/%1$s", object_type],
            query: query.transform_keys(data_sensitivity: "dataSensitivity"),
            model: HubspotSDK::Crm::CollectionResponsePropertyNoPaging,
            options: options
          )
        end

        # Move a property identified by {propertyName} to the recycling bin.
        #
        # @overload delete(property_name, object_type:, request_options: {})
        #
        # @param property_name [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::PropertyDeleteParams
        def delete(property_name, params)
          parsed, options = HubspotSDK::Crm::PropertyDeleteParams.dump_request(params)
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
        # @param data_sensitivity [Symbol, HubspotSDK::Models::Crm::PropertyGetParams::DataSensitivity] Query param
        #
        # @param locale [String] Query param
        #
        # @param properties [String] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Property]
        #
        # @see HubspotSDK::Models::Crm::PropertyGetParams
        def get(property_name, params)
          parsed, options = HubspotSDK::Crm::PropertyGetParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["crm/properties/2026-03/%1$s/%2$s", object_type, property_name],
            query: query.transform_keys(data_sensitivity: "dataSensitivity"),
            model: HubspotSDK::Property,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Crm::Properties::Batch.new(client: client)
          @groups = HubspotSDK::Resources::Crm::Properties::Groups.new(client: client)
        end
      end
    end
  end
end
