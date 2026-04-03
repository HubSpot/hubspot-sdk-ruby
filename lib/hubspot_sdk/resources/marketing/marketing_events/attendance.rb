# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class MarketingEvents
        class Attendance
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::MarketingEvents::AttendanceCreateByEventIDAndContactIDParams}
          # for more details.
          #
          # Records the participation of multiple HubSpot contacts in a Marketing Event
          # using their HubSpot contact IDs.
          #
          # Additional Functionality:
          #
          # - Adds a timeline event to the contacts.
          #
          # Allowed Properties: For the state "attend":
          #
          # - joinedAt
          # - leftAt
          #
          # @overload create_by_event_id_and_contact_id(subscriber_state, object_id_:, inputs:, request_options: {})
          #
          # @param subscriber_state [String] Path param: The attendance state value. It may be 'register', 'attend' or 'cance
          #
          # @param object_id_ [String] Path param: The internal id of the marketing event in HubSpot.
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventSubscriber>] Body param: List of HubSpot contacts to subscribe to the marketing event
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::BatchResponseSubscriberVidResponse]
          #
          # @see HubspotSDK::Models::Marketing::MarketingEvents::AttendanceCreateByEventIDAndContactIDParams
          def create_by_event_id_and_contact_id(subscriber_state, params)
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::AttendanceCreateByEventIDAndContactIDParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "marketing/marketing-events/2026-03/%1$s/attendance/%2$s/create",
                object_id_,
                subscriber_state
              ],
              body: parsed,
              model: HubspotSDK::Marketing::BatchResponseSubscriberVidResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::MarketingEvents::AttendanceCreateByEventIDAndEmailParams}
          # for more details.
          #
          # Records the participation of multiple HubSpot contacts in a Marketing Event
          # using their email addresses.
          #
          # If a contact does not exist, it will be automatically created. The
          # contactProperties field is used exclusively for creating new contacts and will
          # not update properties of existing contacts.
          #
          # Additional Functionality:
          #
          # - Adds a timeline event to the contacts.
          #
          # Allowed Properties: For the state "attend":
          #
          # - joinedAt
          # - leftAt
          #
          # @overload create_by_event_id_and_email(subscriber_state, object_id_:, inputs:, request_options: {})
          #
          # @param subscriber_state [String] Path param: The attendance state value. It may be 'register', 'attend' or 'cance
          #
          # @param object_id_ [String] Path param: The internal id of the marketing event in HubSpot.
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventEmailSubscriber>] Body param: List of marketing event details to create or update
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::BatchResponseSubscriberEmailResponse]
          #
          # @see HubspotSDK::Models::Marketing::MarketingEvents::AttendanceCreateByEventIDAndEmailParams
          def create_by_event_id_and_email(subscriber_state, params)
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::AttendanceCreateByEventIDAndEmailParams.dump_request(params)
            object_id_ =
              parsed.delete(:object_id_) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "marketing/marketing-events/2026-03/%1$s/attendance/%2$s/email-create",
                object_id_,
                subscriber_state
              ],
              body: parsed,
              model: HubspotSDK::Marketing::BatchResponseSubscriberEmailResponse,
              options: options
            )
          end

          # Records the participation of multiple HubSpot contacts in a Marketing Event
          # using their HubSpot contact IDs.
          #
          # Additional Functionality:
          #
          # - Adds a timeline event to the contacts.
          #
          # Allowed Properties: For the state "attend":
          #
          # - joinedAt
          # - leftAt
          #
          # @overload create_by_external_event_id_and_contact_id(subscriber_state, external_event_id:, inputs:, external_account_id: nil, request_options: {})
          #
          # @param subscriber_state [String] Path param
          #
          # @param external_event_id [String] Path param
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventSubscriber>] Body param: List of HubSpot contacts to subscribe to the marketing event
          #
          # @param external_account_id [String] Query param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::BatchResponseSubscriberVidResponse]
          #
          # @see HubspotSDK::Models::Marketing::MarketingEvents::AttendanceCreateByExternalEventIDAndContactIDParams
          def create_by_external_event_id_and_contact_id(subscriber_state, params)
            query_params = [:external_account_id]
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::AttendanceCreateByExternalEventIDAndContactIDParams.dump_request(
                params
              )
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            external_event_id =
              parsed.delete(:external_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "marketing/marketing-events/2026-03/attendance/%1$s/%2$s/create",
                external_event_id,
                subscriber_state
              ],
              query: query.transform_keys(external_account_id: "externalAccountId"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Marketing::BatchResponseSubscriberVidResponse,
              options: options
            )
          end

          # Records the participation of multiple HubSpot contacts in a Marketing Event
          # using their email addresses.
          #
          # If a contact does not exist, it will be automatically created. The
          # contactProperties field is used exclusively for creating new contacts and will
          # not update properties of existing contacts.
          #
          # Additional Functionality:
          #
          # - Adds a timeline event to the contacts.
          #
          # Allowed Properties: For the state "attend":
          #
          # - joinedAt
          # - leftAt
          #
          # @overload create_by_external_event_id_and_email(subscriber_state, external_event_id:, inputs:, external_account_id: nil, request_options: {})
          #
          # @param subscriber_state [String] Path param
          #
          # @param external_event_id [String] Path param
          #
          # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventEmailSubscriber>] Body param: List of marketing event details to create or update
          #
          # @param external_account_id [String] Query param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::BatchResponseSubscriberEmailResponse]
          #
          # @see HubspotSDK::Models::Marketing::MarketingEvents::AttendanceCreateByExternalEventIDAndEmailParams
          def create_by_external_event_id_and_email(subscriber_state, params)
            query_params = [:external_account_id]
            parsed, options =
              HubspotSDK::Marketing::MarketingEvents::AttendanceCreateByExternalEventIDAndEmailParams.dump_request(
                params
              )
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            external_event_id =
              parsed.delete(:external_event_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: [
                "marketing/marketing-events/2026-03/attendance/%1$s/%2$s/email-create",
                external_event_id,
                subscriber_state
              ],
              query: query.transform_keys(external_account_id: "externalAccountId"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Marketing::BatchResponseSubscriberEmailResponse,
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
