# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Schema
          # @return [HubspotSDK::Resources::CRM::Associations::Schema::V4]
          attr_reader :v4

          # @overload list(to_object_type, from_object_type:, request_options: {})
          #
          # @param to_object_type [String]
          # @param from_object_type [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Associations::CollectionResponsePublicAssociationDefinitionNoPaging]
          #
          # @see HubspotSDK::Models::CRM::Associations::SchemaListParams
          def list(to_object_type, params)
            parsed, options = HubspotSDK::CRM::Associations::SchemaListParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/v3/associations/%1$s/%2$s/types", from_object_type, to_object_type],
              model: HubspotSDK::CRM::Associations::CollectionResponsePublicAssociationDefinitionNoPaging,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @v4 = HubspotSDK::Resources::CRM::Associations::Schema::V4.new(client: client)
          end
        end
      end
    end
  end
end
