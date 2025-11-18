# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Properties
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::PropertyCreateParams} for more details.
          #
          # Create a new property for the specified media type
          #
          # @overload create(object_type, app_id:, field_type:, group_name:, label:, name:, type:, calculation_formula: nil, data_sensitivity: nil, description: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, options: nil, referenced_object_type: nil, request_options: {})
          #
          # @param object_type [String] Path param: The object type to create the new property for.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param field_type [Symbol, HubspotSDK::Models::PropertyCreate::FieldType] Body param:
          #
          # @param group_name [String] Body param:
          #
          # @param label [String] Body param:
          #
          # @param name [String] Body param:
          #
          # @param type [Symbol, HubspotSDK::Models::PropertyCreate::Type] Body param:
          #
          # @param calculation_formula [String] Body param:
          #
          # @param data_sensitivity [Symbol, HubspotSDK::Models::PropertyCreate::DataSensitivity] Body param:
          #
          # @param description [String] Body param:
          #
          # @param display_order [Integer] Body param:
          #
          # @param external_options [Boolean] Body param:
          #
          # @param form_field [Boolean] Body param:
          #
          # @param has_unique_value [Boolean] Body param:
          #
          # @param hidden [Boolean] Body param:
          #
          # @param options [Array<HubspotSDK::Models::OptionInput>] Body param:
          #
          # @param referenced_object_type [String] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Property]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::PropertyCreateParams
          def create(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::PropertyCreateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/properties/%2$s", app_id, object_type],
              body: parsed,
              model: HubspotSDK::Property,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::PropertyUpdateParams} for more details.
          #
          # Update an existing property for an object type.
          #
          # @overload update(property_name, app_id:, object_type:, calculation_formula: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, has_unique_value: nil, hidden: nil, label: nil, options: nil, type: nil, request_options: {})
          #
          # @param property_name [String] Path param: The name of the property to update.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param object_type [String] Path param: The object type for the property to be updated.
          #
          # @param calculation_formula [String] Body param:
          #
          # @param description [String] Body param:
          #
          # @param display_order [Integer] Body param:
          #
          # @param field_type [Symbol, HubspotSDK::Models::Cms::MediaBridgePropertyUpdate::FieldType] Body param:
          #
          # @param form_field [Boolean] Body param:
          #
          # @param group_name [String] Body param:
          #
          # @param has_unique_value [Boolean] Body param:
          #
          # @param hidden [Boolean] Body param:
          #
          # @param label [String] Body param:
          #
          # @param options [Array<HubspotSDK::Models::OptionInput>] Body param:
          #
          # @param type [Symbol, HubspotSDK::Models::Cms::MediaBridgePropertyUpdate::Type] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Property]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::PropertyUpdateParams
          def update(property_name, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::PropertyUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["media-bridge/v1/%1$s/properties/%2$s/%3$s", app_id, object_type, property_name],
              body: parsed,
              model: HubspotSDK::Property,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::PropertyListParams} for more details.
          #
          # Get the existing properties defined for a media object type.
          #
          # @overload list(object_type, app_id:, archived: nil, properties: nil, request_options: {})
          #
          # @param object_type [String] Path param: The specific object type to get the details for.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param properties [String] Query param: Filter the response to the specified properties.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::CollectionResponsePropertyNoPaging]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::PropertyListParams
          def list(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::PropertyListParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/properties/%2$s", app_id, object_type],
              query: parsed,
              model: HubspotSDK::Cms::CollectionResponsePropertyNoPaging,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::PropertyDeleteParams} for more details.
          #
          # Delete an existing property for an object type.
          #
          # @overload delete(property_name, app_id:, object_type:, request_options: {})
          #
          # @param property_name [String] The name of the property to delete.
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param object_type [String] The object type for the property to delete.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::PropertyDeleteParams
          def delete(property_name, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::PropertyDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["media-bridge/v1/%1$s/properties/%2$s/%3$s", app_id, object_type, property_name],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::PropertyCreateBatchParams} for more
          # details.
          #
          # Create a batch of properties of the specified object type.
          #
          # @overload create_batch(object_type, app_id:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param: The type of object to create the properties for.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param inputs [Array<HubspotSDK::Models::PropertyCreate>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::BatchResponseProperty]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::PropertyCreateBatchParams
          def create_batch(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::PropertyCreateBatchParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/properties/%2$s/batch/create", app_id, object_type],
              body: parsed,
              model: HubspotSDK::BatchResponseProperty,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::PropertyDeleteBatchParams} for more
          # details.
          #
          # Archive a batch of existing properties for the specified types.
          #
          # @overload delete_batch(object_type, app_id:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param: The object type for the specified properties to be archived.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param inputs [Array<HubspotSDK::Models::PropertyName>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::PropertyDeleteBatchParams
          def delete_batch(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::PropertyDeleteBatchParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/properties/%2$s/batch/archive", app_id, object_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::PropertyGetParams} for more details.
          #
          # Get the details for an existing property by name.
          #
          # @overload get(property_name, app_id:, object_type:, archived: nil, properties: nil, request_options: {})
          #
          # @param property_name [String] Path param: The name of the property to get the details for.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param object_type [String] Path param: The object type for the property.
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param properties [String] Query param: Limit the response to only include the specified properties.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Property]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::PropertyGetParams
          def get(property_name, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::PropertyGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/properties/%2$s/%3$s", app_id, object_type, property_name],
              query: parsed,
              model: HubspotSDK::Property,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::PropertyGetBatchParams} for more details.
          #
          # Get the details for a batch of properties for a specified object type.
          #
          # @overload get_batch(object_type, app_id:, archived:, data_sensitivity:, inputs:, request_options: {})
          #
          # @param object_type [String] Path param: The object type to get the properties for.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param archived [Boolean] Body param:
          #
          # @param data_sensitivity [Symbol, HubspotSDK::Models::BatchReadInputPropertyName::DataSensitivity] Body param:
          #
          # @param inputs [Array<HubspotSDK::Models::PropertyName>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::BatchResponseProperty]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::PropertyGetBatchParams
          def get_batch(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::PropertyGetBatchParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/properties/%2$s/batch/read", app_id, object_type],
              body: parsed,
              model: HubspotSDK::BatchResponseProperty,
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
end
