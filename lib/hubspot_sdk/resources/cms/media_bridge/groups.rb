# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Groups
          # Create a new property group for the specified object type.
          #
          # @overload create(object_type, app_id:, label:, name:, display_order: nil, request_options: {})
          #
          # @param object_type [String] Path param:
          #
          # @param app_id [String] Path param:
          #
          # @param label [String] Body param:
          #
          # @param name [String] Body param:
          #
          # @param display_order [Integer] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PropertyGroup]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::GroupCreateParams
          def create(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::GroupCreateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/properties/%2$s/groups", app_id, object_type],
              body: parsed,
              model: HubspotSDK::CRM::PropertyGroup,
              options: options
            )
          end

          # Get the property groups for a specified object type.
          #
          # @overload list(object_type, app_id:, request_options: {})
          #
          # @param object_type [String]
          # @param app_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::GroupListResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::GroupListParams
          def list(object_type, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::GroupListParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/properties/%2$s/groups", app_id, object_type],
              model: HubspotSDK::Models::Cms::MediaBridge::GroupListResponse,
              options: options
            )
          end

          # Delete an existing property group by name
          #
          # @overload delete_by_name(group_name, app_id:, object_type:, request_options: {})
          #
          # @param group_name [String]
          # @param app_id [String]
          # @param object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::GroupDeleteByNameParams
          def delete_by_name(group_name, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::GroupDeleteByNameParams.dump_request(params)
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
              path: ["media-bridge/v1/%1$s/properties/%2$s/groups/%3$s", app_id, object_type, group_name],
              model: NilClass,
              options: options
            )
          end

          # Get the details of an existing property group by name.
          #
          # @overload get_by_name(group_name, app_id:, object_type:, request_options: {})
          #
          # @param group_name [String]
          # @param app_id [String]
          # @param object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PropertyGroup]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::GroupGetByNameParams
          def get_by_name(group_name, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::GroupGetByNameParams.dump_request(params)
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
              path: ["media-bridge/v1/%1$s/properties/%2$s/groups/%3$s", app_id, object_type, group_name],
              model: HubspotSDK::CRM::PropertyGroup,
              options: options
            )
          end

          # Update an existing property group by name.
          #
          # @overload update_by_name(group_name, app_id:, object_type:, display_order: nil, label: nil, request_options: {})
          #
          # @param group_name [String] Path param:
          #
          # @param app_id [String] Path param:
          #
          # @param object_type [String] Path param:
          #
          # @param display_order [Integer] Body param:
          #
          # @param label [String] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PropertyGroup]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::GroupUpdateByNameParams
          def update_by_name(group_name, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::GroupUpdateByNameParams.dump_request(params)
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
              path: ["media-bridge/v1/%1$s/properties/%2$s/groups/%3$s", app_id, object_type, group_name],
              body: parsed,
              model: HubspotSDK::CRM::PropertyGroup,
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
