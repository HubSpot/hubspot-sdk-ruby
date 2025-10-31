# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Properties
        class Groups
          # Create and return a copy of a new property group.
          #
          # @overload create(object_type, label:, name:, display_order: nil, request_options: {})
          #
          # @param object_type [String]
          # @param label [String]
          # @param name [String]
          # @param display_order [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::CreatedResponsePropertyGroup]
          #
          # @see HubspotSDK::Models::CRM::Properties::GroupCreateParams
          def create(object_type, params)
            parsed, options = HubspotSDK::CRM::Properties::GroupCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/v3/properties/%1$s/groups", object_type],
              body: parsed,
              model: HubspotSDK::CRM::CreatedResponsePropertyGroup,
              options: options
            )
          end

          # Perform a partial update of a property group identified by {groupName}. Provided
          # fields will be overwritten.
          #
          # @overload update(group_name, object_type:, display_order: nil, label: nil, request_options: {})
          #
          # @param group_name [String] Path param:
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
          # @see HubspotSDK::Models::CRM::Properties::GroupUpdateParams
          def update(group_name, params)
            parsed, options = HubspotSDK::CRM::Properties::GroupUpdateParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["crm/v3/properties/%1$s/groups/%2$s", object_type, group_name],
              body: parsed,
              model: HubspotSDK::CRM::PropertyGroup,
              options: options
            )
          end

          # Read all existing property groups for the specified object type and HubSpot
          # account.
          #
          # @overload list(object_type, request_options: {})
          #
          # @param object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::CollectionResponsePropertyGroup]
          #
          # @see HubspotSDK::Models::CRM::Properties::GroupListParams
          def list(object_type, params = {})
            @client.request(
              method: :get,
              path: ["crm/v3/properties/%1$s/groups", object_type],
              model: HubspotSDK::CRM::CollectionResponsePropertyGroup,
              options: params[:request_options]
            )
          end

          # Move a property group identified by {groupName} to the recycling bin.
          #
          # @overload delete(group_name, object_type:, request_options: {})
          #
          # @param group_name [String]
          # @param object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Properties::GroupDeleteParams
          def delete(group_name, params)
            parsed, options = HubspotSDK::CRM::Properties::GroupDeleteParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["crm/v3/properties/%1$s/groups/%2$s", object_type, group_name],
              model: NilClass,
              options: options
            )
          end

          # Read a property group identified by {groupName}.
          #
          # @overload get(group_name, object_type:, request_options: {})
          #
          # @param group_name [String]
          # @param object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PropertyGroup]
          #
          # @see HubspotSDK::Models::CRM::Properties::GroupGetParams
          def get(group_name, params)
            parsed, options = HubspotSDK::CRM::Properties::GroupGetParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/v3/properties/%1$s/groups/%2$s", object_type, group_name],
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
