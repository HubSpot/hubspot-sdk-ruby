# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Associations
        class Batch
          # @overload create(to_object_id, from_object_type:, from_object_id:, to_object_type:, request_options: {})
          #
          # @param to_object_id [String]
          # @param from_object_type [String]
          # @param from_object_id [String]
          # @param to_object_type [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::BatchResponsePublicDefaultAssociation]
          #
          # @see HubSpotSDK::Models::Crm::Associations::BatchCreateParams
          def create(to_object_id, params)
            parsed, options = HubSpotSDK::Crm::Associations::BatchCreateParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            from_object_id =
              parsed.delete(:from_object_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            to_object_type =
              parsed.delete(:to_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: [
                "crm/objects/2026-03/%1$s/%2$s/associations/default/%3$s/%4$s",
                from_object_type,
                from_object_id,
                to_object_type,
                to_object_id
              ],
              model: HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation,
              options: options
            )
          end

          # Batch delete associations for objects
          #
          # @overload delete(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param inputs [Array<HubSpotSDK::Models::Crm::PublicAssociationMultiArchive>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Associations::BatchDeleteParams
          def delete(to_object_type, params)
            parsed, options = HubSpotSDK::Crm::Associations::BatchDeleteParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/associations/2026-03/%1$s/%2$s/batch/archive", from_object_type, to_object_type],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Create the default (most generic) association type between two object types
          #
          # @overload create_default(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param inputs [Array<HubSpotSDK::Models::Crm::PublicDefaultAssociationMultiPost>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::BatchResponsePublicDefaultAssociation]
          #
          # @see HubSpotSDK::Models::Crm::Associations::BatchCreateDefaultParams
          def create_default(to_object_type, params)
            parsed, options = HubSpotSDK::Crm::Associations::BatchCreateDefaultParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "crm/associations/2026-03/%1$s/%2$s/batch/associate/default",
                from_object_type,
                to_object_type
              ],
              body: parsed,
              model: HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation,
              options: options
            )
          end

          # Batch delete specific association labels for objects. Deleting an unlabeled
          # association will also delete all labeled associations between those two objects
          #
          # @overload delete_labels(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param inputs [Array<HubSpotSDK::Models::Crm::PublicAssociationMultiPost>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Associations::BatchDeleteLabelsParams
          def delete_labels(to_object_type, params)
            parsed, options = HubSpotSDK::Crm::Associations::BatchDeleteLabelsParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "crm/associations/2026-03/%1$s/%2$s/batch/labels/archive",
                from_object_type,
                to_object_type
              ],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Batch read associations for objects to specific object type. The 'after' field
          # in a returned paging object can be added alongside the 'id' to retrieve the next
          # page of associations from that objectId. The 'link' field is deprecated and
          # should be ignored. Note: The 'paging' field will only be present if there are
          # more pages and absent otherwise.
          #
          # @overload get(to_object_type, from_object_type:, inputs:, request_options: {})
          #
          # @param to_object_type [String] Path param
          #
          # @param from_object_type [String] Path param
          #
          # @param inputs [Array<HubSpotSDK::Models::Crm::PublicFetchAssociationsBatchRequest>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::BatchResponsePublicAssociationMultiWithLabel]
          #
          # @see HubSpotSDK::Models::Crm::Associations::BatchGetParams
          def get(to_object_type, params)
            parsed, options = HubSpotSDK::Crm::Associations::BatchGetParams.dump_request(params)
            from_object_type =
              parsed.delete(:from_object_type) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["crm/associations/2026-03/%1$s/%2$s/batch/read", from_object_type, to_object_type],
              body: parsed,
              model: HubSpotSDK::Crm::BatchResponsePublicAssociationMultiWithLabel,
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
