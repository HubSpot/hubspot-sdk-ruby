# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Events
        class Associations
          # Gets lists associated with a marketing event by marketing event id
          #
          # @overload list(marketing_event_id, request_options: {})
          #
          # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::CollectionResponseWithTotalPublicListNoPaging]
          #
          # @see HubspotSDK::Models::Marketing::Events::AssociationListParams
          def list(marketing_event_id, params = {})
            @client.request(
              method: :get,
              path: ["marketing/v3/marketing-events/associations/%1$s/lists", marketing_event_id],
              model: HubspotSDK::Marketing::CollectionResponseWithTotalPublicListNoPaging,
              options: params[:request_options]
            )
          end

          # Disassociates a list from a marketing event by marketing event id and ILS list
          # id
          #
          # @overload delete(list_id, marketing_event_id:, request_options: {})
          #
          # @param list_id [String] The ILS ID of the list.
          #
          # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Events::AssociationDeleteParams
          def delete(list_id, params)
            parsed, options = HubspotSDK::Marketing::Events::AssociationDeleteParams.dump_request(params)
            marketing_event_id =
              parsed.delete(:marketing_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "marketing/v3/marketing-events/associations/%1$s/lists/%2$s",
                marketing_event_id,
                list_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Associates a list with a marketing event by marketing event id and ILS list id
          #
          # @overload associate(list_id, marketing_event_id:, request_options: {})
          #
          # @param list_id [String] The ILS ID of the list.
          #
          # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Events::AssociationAssociateParams
          def associate(list_id, params)
            parsed, options = HubspotSDK::Marketing::Events::AssociationAssociateParams.dump_request(params)
            marketing_event_id =
              parsed.delete(:marketing_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: [
                "marketing/v3/marketing-events/associations/%1$s/lists/%2$s",
                marketing_event_id,
                list_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Events::AssociationAssociateByExternalAccountParams}
          # for more details.
          #
          # Associates a list with a marketing event by external account id, external event
          # id, and ILS list id
          #
          # @overload associate_by_external_account(list_id, external_account_id:, external_event_id:, request_options: {})
          #
          # @param list_id [String] The ILS ID of the list.
          #
          # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
          #
          # @param external_event_id [String] The id of the marketing event in the external event application.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Events::AssociationAssociateByExternalAccountParams
          def associate_by_external_account(list_id, params)
            parsed, options =
              HubspotSDK::Marketing::Events::AssociationAssociateByExternalAccountParams.dump_request(params)
            external_account_id =
              parsed.delete(:external_account_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            external_event_id =
              parsed.delete(:external_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: [
                "marketing/v3/marketing-events/associations/%1$s/%2$s/lists/%3$s",
                external_account_id,
                external_event_id,
                list_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Events::AssociationDeleteByExternalAccountParams}
          # for more details.
          #
          # Disassociates a list from a marketing event by external account id, external
          # event id, and ILS list id
          #
          # @overload delete_by_external_account(list_id, external_account_id:, external_event_id:, request_options: {})
          #
          # @param list_id [String] The ILS ID of the list.
          #
          # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
          #
          # @param external_event_id [String] The id of the marketing event in the external event application.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Events::AssociationDeleteByExternalAccountParams
          def delete_by_external_account(list_id, params)
            parsed, options =
              HubspotSDK::Marketing::Events::AssociationDeleteByExternalAccountParams.dump_request(params)
            external_account_id =
              parsed.delete(:external_account_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            external_event_id =
              parsed.delete(:external_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "marketing/v3/marketing-events/associations/%1$s/%2$s/lists/%3$s",
                external_account_id,
                external_event_id,
                list_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Events::AssociationListByExternalAccountParams}
          # for more details.
          #
          # Gets lists associated with a marketing event by external account id and external
          # event id
          #
          # @overload list_by_external_account(external_event_id, external_account_id:, request_options: {})
          #
          # @param external_event_id [String] The id of the marketing event in the external event application.
          #
          # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::CollectionResponseWithTotalPublicListNoPaging]
          #
          # @see HubspotSDK::Models::Marketing::Events::AssociationListByExternalAccountParams
          def list_by_external_account(external_event_id, params)
            parsed, options =
              HubspotSDK::Marketing::Events::AssociationListByExternalAccountParams.dump_request(params)
            external_account_id =
              parsed.delete(:external_account_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "marketing/v3/marketing-events/associations/%1$s/%2$s/lists",
                external_account_id,
                external_event_id
              ],
              model: HubspotSDK::Marketing::CollectionResponseWithTotalPublicListNoPaging,
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
