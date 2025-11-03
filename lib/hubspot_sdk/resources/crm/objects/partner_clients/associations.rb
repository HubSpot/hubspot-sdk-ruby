# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          class Associations
            # Associate a partner client with another object
            #
            # @overload update(association_type, partner_client_id:, to_object_type:, to_object_id:, request_options: {})
            #
            # @param association_type [String]
            # @param partner_client_id [String]
            # @param to_object_type [String]
            # @param to_object_id [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
            #
            # @see HubspotSDK::Models::Crm::Objects::PartnerClients::AssociationUpdateParams
            def update(association_type, params)
              parsed, options = HubspotSDK::Crm::Objects::PartnerClients::AssociationUpdateParams.dump_request(params)
              partner_client_id =
                parsed.delete(:partner_client_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              to_object_type =
                parsed.delete(:to_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              to_object_id =
                parsed.delete(:to_object_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :put,
                path: [
                  "crm/v3/objects/partner_clients/%1$s/associations/%2$s/%3$s/%4$s",
                  partner_client_id,
                  to_object_type,
                  to_object_id,
                  association_type
                ],
                model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Crm::Objects::PartnerClients::AssociationListParams} for
            # more details.
            #
            # List associations of a partner client by type
            #
            # @overload list(to_object_type, partner_client_id:, after: nil, include_fa: nil, limit: nil, request_options: {})
            #
            # @param to_object_type [String] Path param:
            #
            # @param partner_client_id [String] Path param:
            #
            # @param after [String] Query param: The paging cursor token of the last successfully read resource will
            #
            # @param include_fa [Boolean] Query param:
            #
            # @param limit [Integer] Query param: The maximum number of results to display per page.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::AssociatedID>]
            #
            # @see HubspotSDK::Models::Crm::Objects::PartnerClients::AssociationListParams
            def list(to_object_type, params)
              parsed, options = HubspotSDK::Crm::Objects::PartnerClients::AssociationListParams.dump_request(params)
              partner_client_id =
                parsed.delete(:partner_client_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: [
                  "crm/v3/objects/partner_clients/%1$s/associations/%2$s",
                  partner_client_id,
                  to_object_type
                ],
                query: parsed.transform_keys(include_fa: "includeFA"),
                page: HubspotSDK::Internal::Page,
                model: HubspotSDK::Crm::AssociatedID,
                options: options
              )
            end

            # Remove an association between two partner clients
            #
            # @overload delete(association_type, partner_client_id:, to_object_type:, to_object_id:, request_options: {})
            #
            # @param association_type [String]
            # @param partner_client_id [String]
            # @param to_object_type [String]
            # @param to_object_id [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Crm::Objects::PartnerClients::AssociationDeleteParams
            def delete(association_type, params)
              parsed, options = HubspotSDK::Crm::Objects::PartnerClients::AssociationDeleteParams.dump_request(params)
              partner_client_id =
                parsed.delete(:partner_client_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              to_object_type =
                parsed.delete(:to_object_type) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              to_object_id =
                parsed.delete(:to_object_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: [
                  "crm/v3/objects/partner_clients/%1$s/associations/%2$s/%3$s/%4$s",
                  partner_client_id,
                  to_object_type,
                  to_object_id,
                  association_type
                ],
                model: NilClass,
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
