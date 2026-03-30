# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Events
        class Participations
          # Read Marketing event's participations counters by externalAccountId and
          # externalEventId pair.
          sig do
            params(
              external_event_id: String,
              external_account_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::AttendanceCounters)
          end
          def get_by_external_account_and_event_id(
            # The id of the marketing event in the external event application.
            external_event_id,
            # The accountId that is associated with this marketing event in the external event
            # application.
            external_account_id:,
            request_options: {}
          )
          end

          # Read Marketing event's participations counters by internal identifier
          # marketingEventId.
          sig do
            params(
              marketing_event_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::AttendanceCounters)
          end
          def get_by_id(
            # The internal id of the marketing event in HubSpot.
            marketing_event_id,
            request_options: {}
          )
          end

          # Read Contact's participations by identifier - email or internal id.
          sig do
            params(
              contact_identifier: String,
              after: String,
              limit: Integer,
              state: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Marketing::ParticipationBreakdown
              ]
            )
          end
          def list_breakdown_by_contact(
            # The identifier of the Contact. It may be email or internal id.
            contact_identifier,
            # The cursor indicating the position of the last retrieved item.
            after: nil,
            # The limit for response size. The default value is 10, the max number is 100
            limit: nil,
            # The participation state value. It may be REGISTERED, CANCELLED, ATTENDED,
            # NO_SHOW
            state: nil,
            request_options: {}
          )
          end

          # Read Marketing event's participations breakdown with optional filters by
          # externalAccountId and externalEventId pair.
          sig do
            params(
              external_event_id: String,
              external_account_id: String,
              after: String,
              contact_identifier: String,
              limit: Integer,
              state: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Marketing::ParticipationBreakdown
              ]
            )
          end
          def list_breakdown_by_external_account_and_event_id(
            # Path param: The id of the marketing event in the external event application.
            external_event_id,
            # Path param: The accountId that is associated with this marketing event in the
            # external event application.
            external_account_id:,
            # Query param: The cursor indicating the position of the last retrieved item.
            after: nil,
            # Query param: The identifier of the Contact. It may be email or internal id.
            contact_identifier: nil,
            # Query param: The limit for response size. The default value is 10, the max
            # number is 100
            limit: nil,
            # Query param: The participation state value. It may be REGISTERED, CANCELLED,
            # ATTENDED, NO_SHOW
            state: nil,
            request_options: {}
          )
          end

          # Read Marketing event's participations breakdown with optional filters by
          # internal identifier marketingEventId.
          sig do
            params(
              marketing_event_id: Integer,
              after: String,
              contact_identifier: String,
              limit: Integer,
              state: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Marketing::ParticipationBreakdown
              ]
            )
          end
          def list_breakdown_by_id(
            # The internal id of the marketing event in HubSpot.
            marketing_event_id,
            # The cursor indicating the position of the last retrieved item.
            after: nil,
            # The identifier of the Contact. It may be email or internal id.
            contact_identifier: nil,
            # The limit for response size. The default value is 10, the max number is 100
            limit: nil,
            # The participation state value. It may be REGISTERED, CANCELLED, ATTENDED,
            # NO_SHOW
            state: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
