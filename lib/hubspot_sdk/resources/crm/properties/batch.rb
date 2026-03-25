# frozen_string_literal: true

module HubspotSDK
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
          # @param inputs [Array<HubspotSDK::Models::PropertyCreate>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::BatchResponseProperty]
          #
          # @see HubspotSDK::Models::Crm::Properties::BatchCreateParams
          def create(object_type, params)
            parsed, options = HubspotSDK::Crm::Properties::BatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/properties/2026-03/%1$s/batch/create", object_type],
              body: parsed,
              model: HubspotSDK::BatchResponseProperty,
              options: options
            )
          end

          # Delete multiple properties in a single request. This method will return a 204 No
          # Content response on success regardless of the initial state of the property
          # (e.g. active, already archived, non-existent).
          #
          # @overload delete(object_type, inputs:, request_options: {})
          #
          # @param object_type [String]
          # @param inputs [Array<HubspotSDK::Models::PropertyName>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Properties::BatchDeleteParams
          def delete(object_type, params)
            parsed, options = HubspotSDK::Crm::Properties::BatchDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/properties/2026-03/%1$s/batch/archive", object_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Read a batch of properties.
          #
          # @overload get(object_type, archived:, data_sensitivity:, inputs:, locale: nil, request_options: {})
          #
          # @param object_type [String] Path param
          #
          # @param archived [Boolean] Body param
          #
          # @param data_sensitivity [Symbol, HubspotSDK::Models::BatchReadInputPropertyName::DataSensitivity] Body param
          #
          # @param inputs [Array<HubspotSDK::Models::PropertyName>] Body param
          #
          # @param locale [String] Query param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::BatchResponseProperty]
          #
          # @see HubspotSDK::Models::Crm::Properties::BatchGetParams
          def get(object_type, params)
            query_params = [:locale]
            parsed, options = HubspotSDK::Crm::Properties::BatchGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: ["crm/properties/2026-03/%1$s/batch/read", object_type],
              query: query,
              body: parsed.except(*query_params),
              model: HubspotSDK::BatchResponseProperty,
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
