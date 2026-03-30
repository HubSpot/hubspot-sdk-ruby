# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Events
        class Participations
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Events::ParticipationGetByExternalAccountAndEventIDParams}
          # for more details.
          #
          # Read Marketing event's participations counters by externalAccountId and
          # externalEventId pair.
          #
          # @overload get_by_external_account_and_event_id(external_event_id, external_account_id:, request_options: {})
          #
          # @param external_event_id [String] The id of the marketing event in the external event application.
          #
          # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::AttendanceCounters]
          #
          # @see HubspotSDK::Models::Marketing::Events::ParticipationGetByExternalAccountAndEventIDParams
          def get_by_external_account_and_event_id(external_event_id, params)
            parsed, options =
              HubspotSDK::Marketing::Events::ParticipationGetByExternalAccountAndEventIDParams.dump_request(params)
            external_account_id =
              parsed.delete(:external_account_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "marketing/marketing-events/2026-03/participations/%1$s/%2$s",
                external_account_id,
                external_event_id
              ],
              model: HubspotSDK::Marketing::AttendanceCounters,
              options: options
            )
          end

          # Read Marketing event's participations counters by internal identifier
          # marketingEventId.
          #
          # @overload get_by_id(marketing_event_id, request_options: {})
          #
          # @param marketing_event_id [Integer] The internal id of the marketing event in HubSpot.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::AttendanceCounters]
          #
          # @see HubspotSDK::Models::Marketing::Events::ParticipationGetByIDParams
          def get_by_id(marketing_event_id, params = {})
            @client.request(
              method: :get,
              path: ["marketing/marketing-events/2026-03/participations/%1$s", marketing_event_id],
              model: HubspotSDK::Marketing::AttendanceCounters,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Events::ParticipationListBreakdownByContactParams}
          # for more details.
          #
          # Read Contact's participations by identifier - email or internal id.
          #
          # @overload list_breakdown_by_contact(contact_identifier, after: nil, limit: nil, state: nil, request_options: {})
          #
          # @param contact_identifier [String] The identifier of the Contact. It may be email or internal id.
          #
          # @param after [String] The cursor indicating the position of the last retrieved item.
          #
          # @param limit [Integer] The limit for response size. The default value is 10, the max number is 100
          #
          # @param state [String] The participation state value. It may be REGISTERED, CANCELLED, ATTENDED, NO_SHO
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::ParticipationBreakdown>]
          #
          # @see HubspotSDK::Models::Marketing::Events::ParticipationListBreakdownByContactParams
          def list_breakdown_by_contact(contact_identifier, params = {})
            parsed, options =
              HubspotSDK::Marketing::Events::ParticipationListBreakdownByContactParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: [
                "marketing/marketing-events/2026-03/participations/contacts/%1$s/breakdown",
                contact_identifier
              ],
              query: query,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Marketing::ParticipationBreakdown,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Events::ParticipationListBreakdownByExternalAccountAndEventIDParams}
          # for more details.
          #
          # Read Marketing event's participations breakdown with optional filters by
          # externalAccountId and externalEventId pair.
          #
          # @overload list_breakdown_by_external_account_and_event_id(external_event_id, external_account_id:, after: nil, contact_identifier: nil, limit: nil, state: nil, request_options: {})
          #
          # @param external_event_id [String] Path param: The id of the marketing event in the external event application.
          #
          # @param external_account_id [String] Path param: The accountId that is associated with this marketing event in the ex
          #
          # @param after [String] Query param: The cursor indicating the position of the last retrieved item.
          #
          # @param contact_identifier [String] Query param: The identifier of the Contact. It may be email or internal id.
          #
          # @param limit [Integer] Query param: The limit for response size. The default value is 10, the max numbe
          #
          # @param state [String] Query param: The participation state value. It may be REGISTERED, CANCELLED, ATT
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::ParticipationBreakdown>]
          #
          # @see HubspotSDK::Models::Marketing::Events::ParticipationListBreakdownByExternalAccountAndEventIDParams
          def list_breakdown_by_external_account_and_event_id(external_event_id, params)
            parsed, options =
              HubspotSDK::Marketing::Events::ParticipationListBreakdownByExternalAccountAndEventIDParams.dump_request(
                params
              )
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            external_account_id =
              parsed.delete(:external_account_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "marketing/marketing-events/2026-03/participations/%1$s/%2$s/breakdown",
                external_account_id,
                external_event_id
              ],
              query: query.transform_keys(contact_identifier: "contactIdentifier"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Marketing::ParticipationBreakdown,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Events::ParticipationListBreakdownByIDParams}
          # for more details.
          #
          # Read Marketing event's participations breakdown with optional filters by
          # internal identifier marketingEventId.
          #
          # @overload list_breakdown_by_id(marketing_event_id, after: nil, contact_identifier: nil, limit: nil, state: nil, request_options: {})
          #
          # @param marketing_event_id [Integer] The internal id of the marketing event in HubSpot.
          #
          # @param after [String] The cursor indicating the position of the last retrieved item.
          #
          # @param contact_identifier [String] The identifier of the Contact. It may be email or internal id.
          #
          # @param limit [Integer] The limit for response size. The default value is 10, the max number is 100
          #
          # @param state [String] The participation state value. It may be REGISTERED, CANCELLED, ATTENDED, NO_SHO
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::ParticipationBreakdown>]
          #
          # @see HubspotSDK::Models::Marketing::Events::ParticipationListBreakdownByIDParams
          def list_breakdown_by_id(marketing_event_id, params = {})
            parsed, options =
              HubspotSDK::Marketing::Events::ParticipationListBreakdownByIDParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["marketing/marketing-events/2026-03/participations/%1$s/breakdown", marketing_event_id],
              query: query.transform_keys(contact_identifier: "contactIdentifier"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Marketing::ParticipationBreakdown,
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
