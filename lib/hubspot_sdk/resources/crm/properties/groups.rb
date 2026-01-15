# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
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
          # @return [HubspotSDK::Models::Crm::CreatedResponsePropertyGroup]
          #
          # @see HubspotSDK::Models::Crm::Properties::GroupCreateParams
          def create(object_type, params)
            parsed, options = HubspotSDK::Crm::Properties::GroupCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/v3/properties/%1$s/groups", object_type],
              body: parsed,
              model: HubspotSDK::Crm::CreatedResponsePropertyGroup,
              options: options
            )
          end

          # Perform a partial update of a property group identified by {groupName}. Provided
          # fields will be overwritten.
          #
          # @overload update(group_name, object_type:, display_order: nil, label: nil, request_options: {})
          #
          # @param group_name [String] Path param
          #
          # @param object_type [String] Path param
          #
          # @param display_order [Integer] Body param
          #
          # @param label [String] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::PropertyGroup]
          #
          # @see HubspotSDK::Models::Crm::Properties::GroupUpdateParams
          def update(group_name, params)
            parsed, options = HubspotSDK::Crm::Properties::GroupUpdateParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["crm/v3/properties/%1$s/groups/%2$s", object_type, group_name],
              body: parsed,
              model: HubspotSDK::Crm::PropertyGroup,
              options: options
            )
          end

          # Read all existing property groups for the specified object type and HubSpot
          # account.
          #
          # @overload list(object_type, locale: nil, request_options: {})
          #
          # @param object_type [String]
          # @param locale [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponsePropertyGroup]
          #
          # @see HubspotSDK::Models::Crm::Properties::GroupListParams
          def list(object_type, params = {})
            parsed, options = HubspotSDK::Crm::Properties::GroupListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/properties/%1$s/groups", object_type],
              query: parsed,
              model: HubspotSDK::Crm::CollectionResponsePropertyGroup,
              options: options
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
          # @see HubspotSDK::Models::Crm::Properties::GroupDeleteParams
          def delete(group_name, params)
            parsed, options = HubspotSDK::Crm::Properties::GroupDeleteParams.dump_request(params)
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
          # @overload get(group_name, object_type:, locale: nil, request_options: {})
          #
          # @param group_name [String] Path param
          #
          # @param object_type [String] Path param
          #
          # @param locale [String] Query param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::PropertyGroup]
          #
          # @see HubspotSDK::Models::Crm::Properties::GroupGetParams
          def get(group_name, params)
            parsed, options = HubspotSDK::Crm::Properties::GroupGetParams.dump_request(params)
            object_type =
              parsed.delete(:object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/v3/properties/%1$s/groups/%2$s", object_type, group_name],
              query: parsed,
              model: HubspotSDK::Crm::PropertyGroup,
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
