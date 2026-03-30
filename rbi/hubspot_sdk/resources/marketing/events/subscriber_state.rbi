# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Events
        class SubscriberState
          # Record a subscriber state between multiple HubSpot contacts and a marketing
          # event, using contact email addresses. Note that the contact must already exist
          # in HubSpot; a contact will not be created. The contactProperties field is used
          # only when creating a new contact. These properties will not update existing
          # contacts.
          sig do
            params(
              subscriber_state: String,
              external_event_id: String,
              external_account_id: String,
              inputs:
                T::Array[
                  HubspotSDK::Marketing::MarketingEventEmailSubscriber::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def record_by_email(
            # Path param
            subscriber_state,
            # Path param
            external_event_id:,
            # Query param
            external_account_id:,
            # Body param: List of marketing event details to create or update
            inputs:,
            request_options: {}
          )
          end

          # Record a subscriber state between multiple HubSpot contacts and a marketing
          # event, using HubSpot contact IDs. Note that the contact must already exist in
          # HubSpot; a contact will not be created.
          sig do
            params(
              subscriber_state: String,
              external_event_id: String,
              external_account_id: String,
              inputs:
                T::Array[
                  HubspotSDK::Marketing::MarketingEventSubscriber::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def record_by_id(
            # Path param
            subscriber_state,
            # Path param
            external_event_id:,
            # Query param
            external_account_id:,
            # Body param: List of HubSpot contacts to subscribe to the marketing event
            inputs:,
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
