# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Properties
        class Batch
          # Create a batch of properties using the same rules as when creating an individual
          # property.
          #
          # @overload create(object_type, inputs:, request_options: {})
          #
          # @param object_type [String]
          # @param inputs [Array<HubSpotSDK::Models::Crm::PropertyCreate>]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::BatchResponseProperty]
          #
          # @see HubSpotSDK::Models::Crm::Properties::BatchCreateParams
          def create(object_type, params)
            parsed, options = HubSpotSDK::Crm::Properties::BatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/properties/2026-03/%1$s/batch/create", object_type],
              body: parsed,
              model: HubSpotSDK::Crm::BatchResponseProperty,
              options: options
            )
          end

          # Archive a provided list of properties. This method will return a 204 No Content
          # response on success regardless of the initial state of the property (e.g.
          # active, already archived, non-existent).
          #
          # @overload delete(object_type, inputs:, request_options: {})
          #
          # @param object_type [String]
          # @param inputs [Array<HubSpotSDK::Models::PropertyName>]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Properties::BatchDeleteParams
          def delete(object_type, params)
            parsed, options = HubSpotSDK::Crm::Properties::BatchDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/properties/2026-03/%1$s/batch/archive", object_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Read a provided list of properties.
          #
          # @overload get(object_type, archived:, data_sensitivity:, inputs:, locale: nil, request_options: {})
          #
          # @param object_type [String] Path param
          #
          # @param archived [Boolean] Body param
          #
          # @param data_sensitivity [Symbol, HubSpotSDK::Models::BatchReadInputPropertyName::DataSensitivity] Body param
          #
          # @param inputs [Array<HubSpotSDK::Models::PropertyName>] Body param
          #
          # @param locale [String] Query param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::BatchResponseProperty]
          #
          # @see HubSpotSDK::Models::Crm::Properties::BatchGetParams
          def get(object_type, params)
            query_params = [:locale]
            parsed, options = HubSpotSDK::Crm::Properties::BatchGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: ["crm/properties/2026-03/%1$s/batch/read", object_type],
              query: query,
              body: parsed.except(*query_params),
              model: HubSpotSDK::Crm::BatchResponseProperty,
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
