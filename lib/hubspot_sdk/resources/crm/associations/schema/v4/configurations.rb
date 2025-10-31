# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Schema
          class V4
            class Configurations
              # Returns all user configurations available on a given portal
              #
              # @overload list(request_options: {})
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::ConfigurationListParams
              def list(params = {})
                @client.request(
                  method: :get,
                  path: "crm/v4/associations/definitions/configurations/all",
                  model: HubspotSDK::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging,
                  options: params[:request_options]
                )
              end

              # Batch create user configurations between two object types
              #
              # @overload batch_create_by_object_types(to_object_type, from_object_type:, inputs:, request_options: {})
              #
              # @param to_object_type [String] Path param:
              #
              # @param from_object_type [String] Path param:
              #
              # @param inputs [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest>] Body param:
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::ConfigurationBatchCreateByObjectTypesParams
              def batch_create_by_object_types(to_object_type, params)
                parsed, options =
                  HubspotSDK::CRM::Associations::Schema::V4::ConfigurationBatchCreateByObjectTypesParams.dump_request(
                    params
                  )
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :post,
                  path: [
                    "crm/v4/associations/definitions/configurations/%1$s/%2$s/batch/create",
                    from_object_type,
                    to_object_type
                  ],
                  body: parsed,
                  model: HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration,
                  options: options
                )
              end

              # Batch delete user configurations between two object types
              #
              # @overload batch_delete_by_object_types(to_object_type, from_object_type:, inputs:, request_options: {})
              #
              # @param to_object_type [String] Path param:
              #
              # @param from_object_type [String] Path param:
              #
              # @param inputs [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationSpec>] Body param:
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [nil]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::ConfigurationBatchDeleteByObjectTypesParams
              def batch_delete_by_object_types(to_object_type, params)
                parsed, options =
                  HubspotSDK::CRM::Associations::Schema::V4::ConfigurationBatchDeleteByObjectTypesParams.dump_request(
                    params
                  )
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :post,
                  path: [
                    "crm/v4/associations/definitions/configurations/%1$s/%2$s/batch/purge",
                    from_object_type,
                    to_object_type
                  ],
                  body: parsed,
                  model: NilClass,
                  options: options
                )
              end

              # Batch update user configurations between two object types
              #
              # @overload batch_update_by_object_types(to_object_type, from_object_type:, inputs:, request_options: {})
              #
              # @param to_object_type [String] Path param:
              #
              # @param from_object_type [String] Path param:
              #
              # @param inputs [Array<HubspotSDK::Models::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest>] Body param:
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::ConfigurationBatchUpdateByObjectTypesParams
              def batch_update_by_object_types(to_object_type, params)
                parsed, options =
                  HubspotSDK::CRM::Associations::Schema::V4::ConfigurationBatchUpdateByObjectTypesParams.dump_request(
                    params
                  )
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :post,
                  path: [
                    "crm/v4/associations/definitions/configurations/%1$s/%2$s/batch/update",
                    from_object_type,
                    to_object_type
                  ],
                  body: parsed,
                  model: HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult,
                  options: options
                )
              end

              # Returns user configurations on all association definitions between two object
              # types
              #
              # @overload get_by_object_types(to_object_type, from_object_type:, request_options: {})
              #
              # @param to_object_type [String]
              # @param from_object_type [String]
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging]
              #
              # @see HubspotSDK::Models::CRM::Associations::Schema::V4::ConfigurationGetByObjectTypesParams
              def get_by_object_types(to_object_type, params)
                parsed, options =
                  HubspotSDK::CRM::Associations::Schema::V4::ConfigurationGetByObjectTypesParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :get,
                  path: [
                    "crm/v4/associations/definitions/configurations/%1$s/%2$s",
                    from_object_type,
                    to_object_type
                  ],
                  model: HubspotSDK::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging,
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
  end
end
