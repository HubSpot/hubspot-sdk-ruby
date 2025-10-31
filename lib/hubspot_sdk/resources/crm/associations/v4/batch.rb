# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class V4
          class Batch
            # Batch create associations for objects
            #
            # @overload create(to_object_type, from_object_type:, inputs:, request_options: {})
            #
            # @param to_object_type [String] Path param:
            #
            # @param from_object_type [String] Path param:
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::PublicAssociationMultiPost>] Body param:
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponseLabelsBetweenObjectPair]
            #
            # @see HubspotSDK::Models::CRM::Associations::V4::BatchCreateParams
            def create(to_object_type, params)
              parsed, options = HubspotSDK::CRM::Associations::V4::BatchCreateParams.dump_request(params)
              from_object_type =
                parsed.delete(:from_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["crm/v4/associations/%1$s/%2$s/batch/create", from_object_type, to_object_type],
                body: parsed,
                model: HubspotSDK::CRM::BatchResponseLabelsBetweenObjectPair,
                options: options
              )
            end

            # Batch delete associations for objects
            #
            # @overload delete(to_object_type, from_object_type:, inputs:, request_options: {})
            #
            # @param to_object_type [String] Path param:
            #
            # @param from_object_type [String] Path param:
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::PublicAssociationMultiArchive>] Body param:
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponseVoid]
            #
            # @see HubspotSDK::Models::CRM::Associations::V4::BatchDeleteParams
            def delete(to_object_type, params)
              parsed, options = HubspotSDK::CRM::Associations::V4::BatchDeleteParams.dump_request(params)
              from_object_type =
                parsed.delete(:from_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["crm/v4/associations/%1$s/%2$s/batch/archive", from_object_type, to_object_type],
                body: parsed,
                model: HubspotSDK::CRM::BatchResponseVoid,
                options: options
              )
            end

            # Create the default (most generic) association type between two object types
            #
            # @overload create_default(to_object_type, from_object_type:, inputs:, request_options: {})
            #
            # @param to_object_type [String] Path param:
            #
            # @param from_object_type [String] Path param:
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::PublicDefaultAssociationMultiPost>] Body param:
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponsePublicDefaultAssociation]
            #
            # @see HubspotSDK::Models::CRM::Associations::V4::BatchCreateDefaultParams
            def create_default(to_object_type, params)
              parsed, options = HubspotSDK::CRM::Associations::V4::BatchCreateDefaultParams.dump_request(params)
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
                model: HubspotSDK::CRM::BatchResponsePublicDefaultAssociation,
                options: options
              )
            end

            # Batch delete specific association labels for objects. Deleting an unlabeled
            # association will also delete all labeled associations between those two objects
            #
            # @overload delete_labels(to_object_type, from_object_type:, inputs:, request_options: {})
            #
            # @param to_object_type [String] Path param:
            #
            # @param from_object_type [String] Path param:
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::PublicAssociationMultiPost>] Body param:
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponseVoid]
            #
            # @see HubspotSDK::Models::CRM::Associations::V4::BatchDeleteLabelsParams
            def delete_labels(to_object_type, params)
              parsed, options = HubspotSDK::CRM::Associations::V4::BatchDeleteLabelsParams.dump_request(params)
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
                model: HubspotSDK::CRM::BatchResponseVoid,
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
            # @param to_object_type [String] Path param:
            #
            # @param from_object_type [String] Path param:
            #
            # @param inputs [Array<HubspotSDK::Models::CRM::PublicFetchAssociationsBatchRequest>] Body param:
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::BatchResponsePublicAssociationMultiWithLabel]
            #
            # @see HubspotSDK::Models::CRM::Associations::V4::BatchGetParams
            def get(to_object_type, params)
              parsed, options = HubspotSDK::CRM::Associations::V4::BatchGetParams.dump_request(params)
              from_object_type =
                parsed.delete(:from_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["crm/v4/associations/%1$s/%2$s/batch/read", from_object_type, to_object_type],
                body: parsed,
                model: HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel,
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
