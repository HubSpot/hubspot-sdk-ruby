# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          class Batch
            # Batch create associations for objects
            #
            # @overload create(to_object_type, from_object_type:, inputs:, request_options: {})
            #
            # @param to_object_type [String] Path param: The type of the to Object
            #
            # @param from_object_type [String] Path param: The type of the from Object
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::Associations::PublicAssociationMultiPost>] Body param
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Associations::BatchResponseLabelsBetweenObjectPair]
            #
            # @see HubspotSDK::Models::Crm::Associations::V4::BatchCreateParams
            def create(to_object_type, params)
              parsed, options = HubspotSDK::Crm::Associations::V4::BatchCreateParams.dump_request(params)
              from_object_type =
                parsed.delete(:from_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["crm/v4/associations/%1$s/%2$s/batch/create", from_object_type, to_object_type],
                body: parsed,
                model: HubspotSDK::Crm::Associations::BatchResponseLabelsBetweenObjectPair,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Crm::Associations::V4::BatchDeleteParams} for more details.
            #
            # Batch delete associations for objects
            #
            # @overload delete(to_object_type, from_object_type:, inputs:, request_options: {})
            #
            # @param to_object_type [String] Path param: Specifies the type of the target object in the batch association del
            #
            # @param from_object_type [String] Path param: Specifies the type of the source object in the batch association del
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::Associations::PublicAssociationMultiArchive>] Body param
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseVoid]
            #
            # @see HubspotSDK::Models::Crm::Associations::V4::BatchDeleteParams
            def delete(to_object_type, params)
              parsed, options = HubspotSDK::Crm::Associations::V4::BatchDeleteParams.dump_request(params)
              from_object_type =
                parsed.delete(:from_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["crm/v4/associations/%1$s/%2$s/batch/archive", from_object_type, to_object_type],
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseVoid,
                options: options
              )
            end

            # Create the default (most generic) association type between two object types
            #
            # @overload create_default(to_object_type, from_object_type:, inputs:, request_options: {})
            #
            # @param to_object_type [String] Path param: Specifies the type of the target object in the association.
            #
            # @param from_object_type [String] Path param: Specifies the type of the source object in the association.
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::Associations::PublicDefaultAssociationMultiPost>] Body param
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponsePublicDefaultAssociation]
            #
            # @see HubspotSDK::Models::Crm::Associations::V4::BatchCreateDefaultParams
            def create_default(to_object_type, params)
              parsed, options = HubspotSDK::Crm::Associations::V4::BatchCreateDefaultParams.dump_request(params)
              from_object_type =
                parsed.delete(:from_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: [
                  "crm/v4/associations/%1$s/%2$s/batch/associate/default",
                  from_object_type,
                  to_object_type
                ],
                body: parsed,
                model: HubspotSDK::Crm::BatchResponsePublicDefaultAssociation,
                options: options
              )
            end

            # Batch delete specific association labels for objects. Deleting an unlabeled
            # association will also delete all labeled associations between those two objects
            #
            # @overload delete_labels(to_object_type, from_object_type:, inputs:, request_options: {})
            #
            # @param to_object_type [String] Path param: The type of the to Object
            #
            # @param from_object_type [String] Path param: The type of the from Object
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::Associations::PublicAssociationMultiPost>] Body param
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseVoid]
            #
            # @see HubspotSDK::Models::Crm::Associations::V4::BatchDeleteLabelsParams
            def delete_labels(to_object_type, params)
              parsed, options = HubspotSDK::Crm::Associations::V4::BatchDeleteLabelsParams.dump_request(params)
              from_object_type =
                parsed.delete(:from_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: [
                  "crm/v4/associations/%1$s/%2$s/batch/labels/archive",
                  from_object_type,
                  to_object_type
                ],
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseVoid,
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
            # @param to_object_type [String] Path param: The type of the to Object
            #
            # @param from_object_type [String] Path param: The type of the from Object
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::Associations::PublicFetchAssociationsBatchRequest>] Body param
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel]
            #
            # @see HubspotSDK::Models::Crm::Associations::V4::BatchGetParams
            def get(to_object_type, params)
              parsed, options = HubspotSDK::Crm::Associations::V4::BatchGetParams.dump_request(params)
              from_object_type =
                parsed.delete(:from_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["crm/v4/associations/%1$s/%2$s/batch/read", from_object_type, to_object_type],
                body: parsed,
                model: HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel,
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
