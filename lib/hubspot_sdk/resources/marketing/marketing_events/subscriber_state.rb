# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class MarketingEvents
        class SubscriberState
          # Record a subscriber state between multiple HubSpot contacts and a marketing
          # event, using contact email addresses. Note that the contact must already exist
          # in HubSpot; a contact will not be created. The contactProperties field is used
          # only when creating a new contact. These properties will not update existing
          # contacts.
          #
          # @overload record_by_email(subscriber_state, external_event_id:, external_account_id:, inputs:, request_options: {})
          #
          # @param subscriber_state [String] Path param
          #
          # @param external_event_id [String] Path param
          #
          # @param external_account_id [String] Query param
          #
          # @param inputs [Array<HubSpotSDK::Models::Marketing::MarketingEventEmailSubscriber>] Body param: List of marketing event details to create or update
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Marketing::MarketingEvents::SubscriberStateRecordByEmailParams
          def record_by_email(subscriber_state, params)
            query_params = [:external_account_id]
            parsed, options =
              HubSpotSDK::Marketing::MarketingEvents::SubscriberStateRecordByEmailParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            external_event_id =
              parsed.delete(:external_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "marketing/marketing-events/2026-03/events/%1$s/%2$s/email-upsert",
                external_event_id,
                subscriber_state
              ],
              query: query.transform_keys(external_account_id: "externalAccountId"),
              headers: {"accept" => "*/*"},
              body: parsed.except(*query_params),
              model: StringIO,
              options: options
            )
          end

          # Record a subscriber state between multiple HubSpot contacts and a marketing
          # event, using HubSpot contact IDs. Note that the contact must already exist in
          # HubSpot; a contact will not be created.
          #
          # @overload record_by_id(subscriber_state, external_event_id:, external_account_id:, inputs:, request_options: {})
          #
          # @param subscriber_state [String] Path param
          #
          # @param external_event_id [String] Path param
          #
          # @param external_account_id [String] Query param
          #
          # @param inputs [Array<HubSpotSDK::Models::Marketing::MarketingEventSubscriber>] Body param: List of HubSpot contacts to subscribe to the marketing event
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Marketing::MarketingEvents::SubscriberStateRecordByIDParams
          def record_by_id(subscriber_state, params)
            query_params = [:external_account_id]
            parsed, options =
              HubSpotSDK::Marketing::MarketingEvents::SubscriberStateRecordByIDParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            external_event_id =
              parsed.delete(:external_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "marketing/marketing-events/2026-03/events/%1$s/%2$s/upsert",
                external_event_id,
                subscriber_state
              ],
              query: query.transform_keys(external_account_id: "externalAccountId"),
              headers: {"accept" => "*/*"},
              body: parsed.except(*query_params),
              model: StringIO,
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
