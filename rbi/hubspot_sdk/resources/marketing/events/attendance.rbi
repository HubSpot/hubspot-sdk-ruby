# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Events
        class Attendance
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
          sig do
            params(
              subscriber_state: String,
              object_id_: String,
              inputs:
                T::Array[
                  HubspotSDK::Marketing::MarketingEventSubscriber::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::BatchResponseSubscriberVidResponse)
          end
          def create_by_event_id_and_contact_id(
            # Path param: The attendance state value. It may be 'register', 'attend' or
            # 'cancel'
            subscriber_state,
            # Path param: The internal id of the marketing event in HubSpot
            object_id_:,
            # Body param: List of HubSpot contacts to subscribe to the marketing event
            inputs:,
            request_options: {}
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
          sig do
            params(
              subscriber_state: String,
              object_id_: String,
              inputs:
                T::Array[
                  HubspotSDK::Marketing::MarketingEventEmailSubscriber::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Marketing::BatchResponseSubscriberEmailResponse
            )
          end
          def create_by_event_id_and_email(
            # Path param: The attendance state value. It may be 'register', 'attend' or
            # 'cancel'
            subscriber_state,
            # Path param: The internal ID of the marketing event in HubSpot
            object_id_:,
            # Body param: List of marketing event details to create or update
            inputs:,
            request_options: {}
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
          sig do
            params(
              subscriber_state: String,
              external_event_id: String,
              inputs:
                T::Array[
                  HubspotSDK::Marketing::MarketingEventSubscriber::OrHash
                ],
              external_account_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::BatchResponseSubscriberVidResponse)
          end
          def create_by_external_event_id_and_contact_id(
            # Path param: The new subscriber state for the HubSpot contacts and the specified
            # marketing event. For example: 'register', 'attend' or 'cancel'.
            subscriber_state,
            # Path param: The id of the marketing event in the external event application
            external_event_id:,
            # Body param: List of HubSpot contacts to subscribe to the marketing event
            inputs:,
            # Query param: The accountId that is associated with this marketing event in the
            # external event application
            external_account_id: nil,
            request_options: {}
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
          sig do
            params(
              subscriber_state: String,
              external_event_id: String,
              inputs:
                T::Array[
                  HubspotSDK::Marketing::MarketingEventEmailSubscriber::OrHash
                ],
              external_account_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Marketing::BatchResponseSubscriberEmailResponse
            )
          end
          def create_by_external_event_id_and_email(
            # Path param: The new subscriber state for the HubSpot contacts and the specified
            # marketing event. For example: 'register', 'attend' or 'cancel'.
            subscriber_state,
            # Path param: The id of the marketing event in the external event application
            external_event_id:,
            # Body param: List of marketing event details to create or update
            inputs:,
            # Query param: The accountId that is associated with this marketing event in the
            # external event application
            external_account_id: nil,
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
