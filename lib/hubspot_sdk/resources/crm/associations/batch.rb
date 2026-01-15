# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class Batch
          # This endpoint allows you to create multiple associations between specified
          # 'from' and 'to' object types in a single batch request.
          #
          # @overload create(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param: The type of the target object in the association.
          #
          # @param from_object_type [String] Path param: The type of the source object in the association.
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociation>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponsePublicAssociation]
          #
          # @see HubspotSDK::Models::Crm::Associations::BatchCreateParams
          def create(to_object_type, params)
            parsed, options = HubspotSDK::Crm::Associations::BatchCreateParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/v3/associations/%1$s/%2$s/batch/create", from_object_type, to_object_type],
              body: parsed,
              model: HubspotSDK::Crm::BatchResponsePublicAssociation,
              options: options
            )
          end

          # This endpoint allows you to archive multiple associations between specified
          # 'from' and 'to' object types in a single batch request.
          #
          # @overload delete(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param: The type of the target object in the association.
          #
          # @param from_object_type [String] Path param: The type of the source object in the association.
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::PublicAssociation>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Associations::BatchDeleteParams
          def delete(to_object_type, params)
            parsed, options = HubspotSDK::Crm::Associations::BatchDeleteParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/v3/associations/%1$s/%2$s/batch/archive", from_object_type, to_object_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # This endpoint allows you to retrieve multiple associations between specified
          # 'from' and 'to' object types in a single batch request.
          #
          # @overload get(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param: The type of the target object in the association.
          #
          # @param from_object_type [String] Path param: The type of the source object in the association.
          #
          # @param inputs [Array<HubspotSDK::Models::PublicObjectID>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponsePublicAssociationMulti]
          #
          # @see HubspotSDK::Models::Crm::Associations::BatchGetParams
          def get(to_object_type, params)
            parsed, options = HubspotSDK::Crm::Associations::BatchGetParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/v3/associations/%1$s/%2$s/batch/read", from_object_type, to_object_type],
              body: parsed,
              model: HubspotSDK::Crm::BatchResponsePublicAssociationMulti,
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
