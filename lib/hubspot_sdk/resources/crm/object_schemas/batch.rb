# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class ObjectSchemas
        class Batch
          # @overload get(include_association_definitions:, include_audit_metadata:, include_property_definitions:, inputs:, request_options: {})
          #
          # @param include_association_definitions [Boolean]
          # @param include_audit_metadata [Boolean]
          # @param include_property_definitions [Boolean]
          # @param inputs [Array<String>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CollectionResponseObjectSchemaNoPaging]
          #
          # @see HubspotSDK::Models::Crm::ObjectSchemas::BatchGetParams
          def get(params)
            parsed, options = HubspotSDK::Crm::ObjectSchemas::BatchGetParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm-object-schemas/2026-03/schemas/batch/read",
              body: parsed,
              model: HubspotSDK::CollectionResponseObjectSchemaNoPaging,
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
