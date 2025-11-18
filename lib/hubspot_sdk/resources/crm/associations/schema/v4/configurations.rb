# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class Schema
          class V4
            class Configurations
              # @overload list(request_options: {})
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::Crm::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::ConfigurationListParams
              def list(params = {})
                @client.request(
                  method: :get,
                  path: "crm/associations/v4/definitions/configurations/all",
                  model: HubspotSDK::Crm::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration,
                  options: params[:request_options]
                )
              end

              # @overload batch_create(to_object_type, from_object_type:, inputs:, request_options: {})
              #
              # @param to_object_type [String] Path param:
              #
              # @param from_object_type [String] Path param:
              #
              # @param inputs [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest>] Body param:
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::ConfigurationBatchCreateParams
              def batch_create(to_object_type, params)
                parsed, options =
                  HubspotSDK::Crm::Associations::Schema::V4::ConfigurationBatchCreateParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :post,
                  path: [
                    "crm/associations/v4/definitions/configurations/%1$s/%2$s/batch/create",
                    from_object_type,
                    to_object_type
                  ],
                  body: parsed,
                  model: HubspotSDK::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration,
                  options: options
                )
              end

              # @overload batch_delete(to_object_type, from_object_type:, inputs:, request_options: {})
              #
              # @param to_object_type [String] Path param:
              #
              # @param from_object_type [String] Path param:
              #
              # @param inputs [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationSpec>] Body param:
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::Crm::BatchResponseVoid]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::ConfigurationBatchDeleteParams
              def batch_delete(to_object_type, params)
                parsed, options =
                  HubspotSDK::Crm::Associations::Schema::V4::ConfigurationBatchDeleteParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :post,
                  path: [
                    "crm/associations/v4/definitions/configurations/%1$s/%2$s/batch/purge",
                    from_object_type,
                    to_object_type
                  ],
                  body: parsed,
                  model: HubspotSDK::Crm::BatchResponseVoid,
                  options: options
                )
              end

              # @overload batch_update(to_object_type, from_object_type:, inputs:, request_options: {})
              #
              # @param to_object_type [String] Path param:
              #
              # @param from_object_type [String] Path param:
              #
              # @param inputs [Array<HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest>] Body param:
              #
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::ConfigurationBatchUpdateParams
              def batch_update(to_object_type, params)
                parsed, options =
                  HubspotSDK::Crm::Associations::Schema::V4::ConfigurationBatchUpdateParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :post,
                  path: [
                    "crm/associations/v4/definitions/configurations/%1$s/%2$s/batch/update",
                    from_object_type,
                    to_object_type
                  ],
                  body: parsed,
                  model: HubspotSDK::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult,
                  options: options
                )
              end

              # @overload get_by_object_types(to_object_type, from_object_type:, request_options: {})
              #
              # @param to_object_type [String]
              # @param from_object_type [String]
              # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [HubspotSDK::Models::Crm::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration]
              #
              # @see HubspotSDK::Models::Crm::Associations::Schema::V4::ConfigurationGetByObjectTypesParams
              def get_by_object_types(to_object_type, params)
                parsed, options =
                  HubspotSDK::Crm::Associations::Schema::V4::ConfigurationGetByObjectTypesParams.dump_request(params)
                from_object_type =
                  parsed.delete(:from_object_type) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :get,
                  path: [
                    "crm/associations/v4/definitions/configurations/%1$s/%2$s",
                    from_object_type,
                    to_object_type
                  ],
                  model: HubspotSDK::Crm::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration,
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
