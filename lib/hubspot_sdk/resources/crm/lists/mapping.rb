# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Lists
        class Mapping
          # This API allows translation of a batch of legacy list id's to list id's. This
          # allows for a maximum of 10,000 id's. This is a temporary API allowed for mapping
          # old id's to new id's and will expire on May 30th, 2025.
          #
          # @overload batch_create_id_mapping(body:, request_options: {})
          #
          # @param body [Array<String>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::PublicBatchMigrationMapping]
          #
          # @see HubspotSDK::Models::Crm::Lists::MappingBatchCreateIDMappingParams
          def batch_create_id_mapping(params)
            parsed, options = HubspotSDK::Crm::Lists::MappingBatchCreateIDMappingParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/lists/idmapping",
              body: parsed[:body],
              model: HubspotSDK::Crm::PublicBatchMigrationMapping,
              options: options
            )
          end

          # This API allows translation of legacy list id to list id. This is a temporary
          # API allowed for mapping old id's to new id's and will expire on May 30th, 2025.
          #
          # @overload get_id_mapping(legacy_list_id: nil, request_options: {})
          #
          # @param legacy_list_id [String] The legacy list id from lists v1 API.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::PublicMigrationMapping]
          #
          # @see HubspotSDK::Models::Crm::Lists::MappingGetIDMappingParams
          def get_id_mapping(params = {})
            parsed, options = HubspotSDK::Crm::Lists::MappingGetIDMappingParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/lists/idmapping",
              query: parsed.transform_keys(legacy_list_id: "legacyListId"),
              model: HubspotSDK::Crm::PublicMigrationMapping,
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
