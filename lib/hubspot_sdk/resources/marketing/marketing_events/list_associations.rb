# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class MarketingEvents
        class ListAssociations
          # Gets lists associated with a marketing event by marketing event id
          #
          # @overload list(marketing_event_id, request_options: {})
          #
          # @param marketing_event_id [String] The internal id of the marketing event in HubSpot.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::CollectionResponseWithTotalPublicList]
          #
          # @see HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationListParams
          def list(marketing_event_id, params = {})
            @client.request(
              method: :get,
              path: ["marketing/marketing-events/2026-03/associations/%1$s/lists", marketing_event_id],
              model: HubspotSDK::Marketing::CollectionResponseWithTotalPublicList,
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
          # @see HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationDeleteParams
          def delete(list_id, params)
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::ListAssociationDeleteParams.dump_request(params)
            marketing_event_id =
              parsed.delete(:marketing_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: [
                "marketing/marketing-events/2026-03/associations/%1$s/lists/%2$s",
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
          # @see HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationAssociateParams
          def associate(list_id, params)
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::ListAssociationAssociateParams.dump_request(params)
            marketing_event_id =
              parsed.delete(:marketing_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: [
                "marketing/marketing-events/2026-03/associations/%1$s/lists/%2$s",
                marketing_event_id,
                list_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationAssociateByExternalAccountParams}
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
          # @see HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationAssociateByExternalAccountParams
          def associate_by_external_account(list_id, params)
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::ListAssociationAssociateByExternalAccountParams.dump_request(
                params
              )
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
                "marketing/marketing-events/2026-03/associations/%1$s/%2$s/lists/%3$s",
                external_account_id,
                external_event_id,
                list_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationDeleteByExternalAccountParams}
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
          # @see HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationDeleteByExternalAccountParams
          def delete_by_external_account(list_id, params)
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::ListAssociationDeleteByExternalAccountParams.dump_request(params)
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
                "marketing/marketing-events/2026-03/associations/%1$s/%2$s/lists/%3$s",
                external_account_id,
                external_event_id,
                list_id
              ],
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationListByExternalAccountParams}
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
          # @return [HubspotSDK::Models::Marketing::CollectionResponseWithTotalPublicList]
          #
          # @see HubspotSDK::Models::Marketing::MarketingEvents::ListAssociationListByExternalAccountParams
          def list_by_external_account(external_event_id, params)
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::ListAssociationListByExternalAccountParams.dump_request(params)
            external_account_id =
              parsed.delete(:external_account_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "marketing/marketing-events/2026-03/associations/%1$s/%2$s/lists",
                external_account_id,
                external_event_id
              ],
              model: HubspotSDK::Marketing::CollectionResponseWithTotalPublicList,
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
