# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class AssociationsSchema
        class Limits
          # Retrieve all configured association limits between objects, which include
          # details about how different CRM object types are associated with each other.
          #
          # @overload list(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LimitListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "crm/associations/2026-03/definitions/configurations/all",
              model: HubspotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging,
              options: params[:request_options]
            )
          end

          # Batch delete limits that have been defined for association types between two
          # object types.
          #
          # @overload batch_delete(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociationSpec>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseVoid]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LimitBatchDeleteParams
          def batch_delete(to_object_type, params)
            parsed, options = HubspotSDK::Crm::AssociationsSchema::LimitBatchDeleteParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "crm/associations/2026-03/definitions/configurations/%1$s/%2$s/batch/purge",
                from_object_type,
                to_object_type
              ],
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseVoid,
              options: options
            )
          end

          # Batch update association limits that have been configured between two object
          # types.
          #
          # @overload batch_update(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateRequest>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LimitBatchUpdateParams
          def batch_update(to_object_type, params)
            parsed, options = HubspotSDK::Crm::AssociationsSchema::LimitBatchUpdateParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "crm/associations/2026-03/definitions/configurations/%1$s/%2$s/batch/update",
                from_object_type,
                to_object_type
              ],
              body: parsed,
              model: HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult,
              options: options
            )
          end

          # Retrieve the configuration details for associations between two specified CRM
          # object types. Use this endpoint to understand limits that have been set for
          # specific association types.
          #
          # @overload get_by_object_types(to_object_type, from_object_type:, request_options: {})
          #
          # @param to_object_type [String]
          # @param from_object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging]
          #
          # @see HubspotSDK::Models::Crm::AssociationsSchema::LimitGetByObjectTypesParams
          def get_by_object_types(to_object_type, params)
            parsed, options = HubspotSDK::Crm::AssociationsSchema::LimitGetByObjectTypesParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "crm/associations/2026-03/definitions/configurations/%1$s/%2$s",
                from_object_type,
                to_object_type
              ],
              model: HubspotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging,
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
