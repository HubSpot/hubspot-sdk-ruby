# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class ObjectSchemas
        class Batch
          # Retrieve details of multiple custom object schemas by providing a batch request
          # with specified inputs. This operation allows you to fetch schema information,
          # including properties and associations, for multiple custom objects in a single
          # API call.
          #
          # @overload get(include_association_definitions:, include_audit_metadata:, include_property_definitions:, inputs:, request_options: {})
          #
          # @param include_association_definitions [Boolean] Indicates whether to include association definitions in the response.
          #
          # @param include_audit_metadata [Boolean] Indicates whether to include audit metadata in the response.
          #
          # @param include_property_definitions [Boolean] Indicates whether to include property definitions in the response.
          #
          # @param inputs [Array<String>]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::CollectionResponseObjectSchemaNoPaging]
          #
          # @see HubSpotSDK::Models::Crm::ObjectSchemas::BatchGetParams
          def get(params)
            parsed, options = HubSpotSDK::Crm::ObjectSchemas::BatchGetParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm-object-schemas/2026-03/schemas/batch/read",
              body: parsed,
              model: HubSpotSDK::Crm::CollectionResponseObjectSchemaNoPaging,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
