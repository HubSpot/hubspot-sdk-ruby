# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          class Batch
            # This endpoint allows you to update several partner client records at once by
            # providing a batch of CRM object records with their respective IDs and
            # properties. It is useful for synchronizing data across systems or making bulk
            # updates efficiently.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::PartnerClients::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::Crm::Objects::PartnerClients::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/partner_clients/batch/update",
                body: parsed,
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # @overload create_default_association(to_object_id, from_object_type:, from_object_id:, to_object_type:, request_options: {})
            #
            # @param to_object_id [String]
            # @param from_object_type [String]
            # @param from_object_id [String]
            # @param to_object_type [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponsePublicDefaultAssociation]
            #
            # @see HubspotSDK::Models::Crm::Objects::PartnerClients::BatchCreateDefaultAssociationParams
            def create_default_association(to_object_id, params)
              parsed, options =
                HubspotSDK::Crm::Objects::PartnerClients::BatchCreateDefaultAssociationParams.dump_request(params)
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
                model: HubspotSDK::Crm::BatchResponsePublicDefaultAssociation,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Crm::Objects::PartnerClients::BatchGetParams} for more
            # details.
            #
            # Retrieve multiple partner client objects in a single request by specifying their
            # IDs. This endpoint is useful for efficiently accessing data for multiple clients
            # at once, particularly when integrating with third-party systems.
            #
            # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>] Body param
            #
            # @param properties [Array<String>] Body param: Key-value pairs for setting properties for the new object.
            #
            # @param properties_with_history [Array<String>] Body param: Key-value pairs for setting properties for the new object and their
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param id_property [String] Body param: When using a custom unique value property to retrieve records, the n
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubspotSDK::Models::Crm::Objects::PartnerClients::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubspotSDK::Crm::Objects::PartnerClients::BatchGetParams.dump_request(params)
              query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/partner_clients/batch/read",
                query: query,
                body: parsed.except(*query_params),
                model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
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
