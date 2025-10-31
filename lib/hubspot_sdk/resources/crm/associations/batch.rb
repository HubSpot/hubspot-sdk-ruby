# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Batch
          # @overload create(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param: The type of the object to which associations will be created.
          #
          # @param from_object_type [String] Path param: The type of the object from which associations will be created.
          #
          # @param inputs [Array<HubspotSDK::Models::CRM::PublicAssociation>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::BatchResponsePublicAssociation]
          #
          # @see HubspotSDK::Models::CRM::Associations::BatchCreateParams
          def create(to_object_type, params)
            parsed, options = HubspotSDK::CRM::Associations::BatchCreateParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/v3/associations/%1$s/%2$s/batch/create", from_object_type, to_object_type],
              body: parsed,
              model: HubspotSDK::CRM::BatchResponsePublicAssociation,
              options: options
            )
          end

          # @overload delete(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param: The type of the object to which associations will be removed.
          #
          # @param from_object_type [String] Path param: The type of the object from which associations will be removed.
          #
          # @param inputs [Array<HubspotSDK::Models::CRM::PublicAssociation>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Associations::BatchDeleteParams
          def delete(to_object_type, params)
            parsed, options = HubspotSDK::CRM::Associations::BatchDeleteParams.dump_request(params)
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

          # @overload get(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param: The type of the object to which associations will be read.
          #
          # @param from_object_type [String] Path param: The type of the object from which associations will be read.
          #
          # @param inputs [Array<HubspotSDK::Models::PublicObjectID>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::BatchResponsePublicAssociationMulti]
          #
          # @see HubspotSDK::Models::CRM::Associations::BatchGetParams
          def get(to_object_type, params)
            parsed, options = HubspotSDK::CRM::Associations::BatchGetParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/v3/associations/%1$s/%2$s/batch/read", from_object_type, to_object_type],
              body: parsed,
              model: HubspotSDK::CRM::BatchResponsePublicAssociationMulti,
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
