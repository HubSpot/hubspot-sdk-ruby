# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Events
        sig { returns(HubspotSDK::Resources::Marketing::Events::Associations) }
        attr_reader :associations

        sig { returns(HubspotSDK::Resources::Marketing::Events::Attendance) }
        attr_reader :attendance

        sig do
          returns(HubspotSDK::Resources::Marketing::Events::Participations)
        end
        attr_reader :participations

        sig { returns(HubspotSDK::Resources::Marketing::Events::Settings) }
        attr_reader :settings

        # Creates a new marketing event in HubSpot
        sig do
          params(
            custom_properties:
              T::Array[HubspotSDK::Marketing::PropertyValue::OrHash],
            event_name: String,
            event_organizer: String,
            external_account_id: String,
            external_event_id: String,
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_completed: T::Boolean,
            event_description: String,
            event_type: String,
            event_url: String,
            start_date_time: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventDefaultResponse)
        end
        def create(
          # A list of PropertyValues. These can be whatever kind of property names and
          # values you want. However, they must already exist on the HubSpot account's
          # definition of the MarketingEvent Object. If they don't they will be filtered out
          # and not set. In order to do this you'll need to create a new PropertyGroup on
          # the HubSpot account's MarketingEvent object for your specific app and create the
          # Custom Property you want to track on that HubSpot account. Do not create any new
          # default properties on the MarketingEvent object as that will apply to all
          # HubSpot accounts.
          custom_properties:,
          # The name of the marketing event.
          event_name:,
          # The name of the organizer of the marketing event.
          event_organizer:,
          # The accountId that is associated with this marketing event in the external event
          # application.
          external_account_id:,
          # The id of the marketing event in the external event application.
          external_event_id:,
          # The end date and time of the marketing event.
          end_date_time: nil,
          # Indicates if the marketing event has been cancelled. Defaults to `false`
          event_cancelled: nil,
          event_completed: nil,
          # The description of the marketing event.
          event_description: nil,
          # Describes what type of event this is. For example: `WEBINAR`, `CONFERENCE`,
          # `WORKSHOP`
          event_type: nil,
          # A URL in the external event application where the marketing event can be
          # managed.
          event_url: nil,
          # The start date and time of the marketing event.
          start_date_time: nil,
          request_options: {}
        )
        end

        # Updates the details of an existing Marketing Event identified by its objectId,
        # if it exists.
        sig do
          params(
            object_id_: String,
            custom_properties:
              T::Array[HubspotSDK::Marketing::PropertyValue::OrHash],
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_description: String,
            event_name: String,
            event_organizer: String,
            event_type: String,
            event_url: String,
            start_date_time: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2
          )
        end
        def update(
          # The internal ID of the marketing event in HubSpot
          object_id_,
          custom_properties:,
          end_date_time: nil,
          event_cancelled: nil,
          event_description: nil,
          event_name: nil,
          event_organizer: nil,
          event_type: nil,
          event_url: nil,
          start_date_time: nil,
          request_options: {}
        )
        end

        # Returns all Marketing Events available on the portal, along with their
        # properties, regardless of whether they were created manually or through the
        # application.
        #
        # The marketing events returned by this endpoint are sorted by objectId.
        sig do
          params(
            after: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Marketing::MarketingEventPublicReadResponseV2
            ]
          )
        end
        def list(
          # The cursor indicating the position of the last retrieved item.
          after: nil,
          # The limit for response size. The default value is 10, the max number is 100
          limit: nil,
          request_options: {}
        )
        end

        # Deletes the existing Marketing Event with the specified objectId, if it exists.
        sig do
          params(
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The internal ID of the marketing event in HubSpot
          object_id_,
          request_options: {}
        )
        end

        # Mark a marketing event as cancelled.
        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventDefaultResponse)
        end
        def cancel_by_external_event_id(
          # The id of the marketing event in the external event application
          external_event_id,
          # The accountId that is associated with this marketing event in the external event
          # application
          external_account_id:,
          request_options: {}
        )
        end

        # Mark a marketing event as completed
        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            end_date_time: Time,
            start_date_time: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventDefaultResponse)
        end
        def complete_by_external_event_id(
          # Path param: The id of the marketing event in the external event application.
          external_event_id,
          # Query param: The accountId that is associated with this marketing event in the
          # external event application.
          external_account_id:,
          # Body param:
          end_date_time:,
          # Body param:
          start_date_time:,
          request_options: {}
        )
        end

        # Deletes multiple Marketing Events from the portal based on their objectId, if
        # they exist.
        #
        # Responses: 204: Returned if all specified Marketing Events were successfully
        # deleted. 207: Returned if some objectIds did not correspond to any existing
        # Marketing Events.
        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::MarketingEventPublicObjectIDDeleteRequest::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_batch(inputs:, request_options: {})
        end

        # Deletes multiple Marketing Events based on externalAccountId, externalEventId,
        # and appId.
        #
        # Only Marketing Events created by the same apps will be deleted; events from
        # other apps cannot be removed by this endpoint.
        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::MarketingEventExternalUniqueIdentifier::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def delete_batch_by_external_event_id(inputs:, request_options: {})
        end

        # Deletes the existing Marketing Event with the specified externalAccountId,
        # externalEventId, if it exists.
        #
        # Only Marketing Events created by the same app can be deleted.
        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_by_external_event_id(
          # The id of the marketing event in the external event application
          external_event_id,
          # The accountId that is associated with this marketing event in the external event
          # application
          external_account_id:,
          request_options: {}
        )
        end

        # Returns the details of a Marketing Event with the specified objectId, if it
        # exists.
        sig do
          params(
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventPublicReadResponseV2)
        end
        def get(
          # The internal ID of the marketing event in HubSpot
          object_id_,
          request_options: {}
        )
        end

        # Returns the details of a Marketing Event with the specified externalAccountId,
        # externalEventId, if it exists.
        #
        # Only Marketing Events created by the same app making the request can be
        # retrieved.
        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventPublicReadResponse)
        end
        def get_by_external_event_id(
          # The id of the marketing event in the external event application
          external_event_id,
          # The accountId that is associated with this marketing event in the external event
          # application
          external_account_id:,
          request_options: {}
        )
        end

        # Retrieves Marketing Events where the externalEventId matches the value provided
        # in the request, limited to events created by the app making the request.
        #
        # Marketing Events created by other apps will not be included in the results.
        sig do
          params(
            q: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging
          )
        end
        def search_by_external_event_id(
          # The id of the marketing event in the external event application
          # (externalEventId)
          q:,
          request_options: {}
        )
        end

        # This endpoint searches the portal for all Marketing Events whose externalEventId
        # matches the value provided in the request.
        #
        # It retrieves the objectId and additional event details for each matching
        # Marketing Event.
        #
        # Since multiple Marketing Events can have the same externalEventId, the endpoint
        # returns all matching results.
        #
        # Note: Marketing Events become searchable by externalEventId a few minutes after
        # creation.
        sig do
          params(
            external_event_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponseNoPaging
          )
        end
        def search_identifiers_by_external_event_id(
          # The id of the marketing event in the external event application.
          external_event_id,
          request_options: {}
        )
        end

        # Updates multiple Marketing Events on the portal based on their objectId, if they
        # exist.
        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::MarketingEventPublicUpdateRequestFullV2::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2
          )
        end
        def update_batch(inputs:, request_options: {})
        end

        # Updates the details of an existing Marketing Event identified by its
        # externalAccountId, externalEventId if it exists.
        #
        # Only Marketing Events created by the same app can be updated.
        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            custom_properties:
              T::Array[HubspotSDK::Marketing::PropertyValue::OrHash],
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_completed: T::Boolean,
            event_description: String,
            event_name: String,
            event_organizer: String,
            event_type: String,
            event_url: String,
            start_date_time: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventPublicDefaultResponse)
        end
        def update_by_external_event_id(
          # Path param: The id of the marketing event in the external event application
          external_event_id,
          # Query param: The accountId that is associated with this marketing event in the
          # external event application
          external_account_id:,
          # Body param: A list of PropertyValues. These can be whatever kind of property
          # names and values you want. However, they must already exist on the HubSpot
          # account's definition of the MarketingEvent Object. If they don't they will be
          # filtered out and not set. In order to do this you'll need to create a new
          # PropertyGroup on the HubSpot account's MarketingEvent object for your specific
          # app and create the Custom Property you want to track on that HubSpot account. Do
          # not create any new default properties on the MarketingEvent object as that will
          # apply to all HubSpot accounts.
          custom_properties:,
          # Body param: The end date and time of the marketing event.
          end_date_time: nil,
          # Body param: Indicates if the marketing event has been cancelled. Defaults to
          # `false`
          event_cancelled: nil,
          # Body param:
          event_completed: nil,
          # Body param: The description of the marketing event.
          event_description: nil,
          # Body param: The name of the marketing event.
          event_name: nil,
          # Body param: The name of the organizer of the marketing event.
          event_organizer: nil,
          # Body param: Describes what type of event this is. For example: `WEBINAR`,
          # `CONFERENCE`, `WORKSHOP`
          event_type: nil,
          # Body param: A URL in the external event application where the marketing event
          # can be managed.
          event_url: nil,
          # Body param: The start date and time of the marketing event.
          start_date_time: nil,
          request_options: {}
        )
        end

        # Upserts multiple Marketing Events. If a Marketing Event with the specified ID
        # already exists, it will be updated; otherwise, a new event will be created.
        #
        # Only Marketing Events originally created by the same app can be updated.
        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::MarketingEventCreateRequestParams::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse
          )
        end
        def upsert_batch(inputs:, request_options: {})
        end

        # Upserts a marketing event If there is an existing marketing event with the
        # specified ID, it will be updated; otherwise a new event will be created.
        sig do
          params(
            path_external_event_id: String,
            custom_properties:
              T::Array[HubspotSDK::Marketing::PropertyValue::OrHash],
            event_name: String,
            event_organizer: String,
            external_account_id: String,
            body_external_event_id: String,
            end_date_time: Time,
            event_cancelled: T::Boolean,
            event_completed: T::Boolean,
            event_description: String,
            event_type: String,
            event_url: String,
            start_date_time: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventPublicDefaultResponse)
        end
        def upsert_by_external_event_id(
          # The id of the marketing event in the external event application
          path_external_event_id,
          # A list of PropertyValues. These can be whatever kind of property names and
          # values you want. However, they must already exist on the HubSpot account's
          # definition of the MarketingEvent Object. If they don't they will be filtered out
          # and not set. In order to do this you'll need to create a new PropertyGroup on
          # the HubSpot account's MarketingEvent object for your specific app and create the
          # Custom Property you want to track on that HubSpot account. Do not create any new
          # default properties on the MarketingEvent object as that will apply to all
          # HubSpot accounts.
          custom_properties:,
          # The name of the marketing event.
          event_name:,
          # The name of the organizer of the marketing event.
          event_organizer:,
          # The accountId that is associated with this marketing event in the external event
          # application.
          external_account_id:,
          # The id of the marketing event in the external event application.
          body_external_event_id:,
          # The end date and time of the marketing event.
          end_date_time: nil,
          # Indicates if the marketing event has been cancelled. Defaults to `false`
          event_cancelled: nil,
          event_completed: nil,
          # The description of the marketing event.
          event_description: nil,
          # Describes what type of event this is. For example: `WEBINAR`, `CONFERENCE`,
          # `WORKSHOP`
          event_type: nil,
          # A URL in the external event application where the marketing event can be
          # managed.
          event_url: nil,
          # The start date and time of the marketing event.
          start_date_time: nil,
          request_options: {}
        )
        end

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
        def upsert_subscriber_state_by_email(
          # Path param: The new subscriber state for the HubSpot contacts and the specified
          # marketing event. For example: 'register', 'attend' or 'cancel'.
          subscriber_state,
          # Path param: The id of the marketing event in the external event application
          external_event_id:,
          # Query param: The accountId that is associated with this marketing event in the
          # external event application
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
              T::Array[HubspotSDK::Marketing::MarketingEventSubscriber::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def upsert_subscriber_state_by_id(
          # Path param: The new subscriber state for the HubSpot contacts and the specified
          # marketing event. For example: 'register', 'attend' or 'cancel'.
          subscriber_state,
          # Path param: The id of the marketing event in the external event application
          external_event_id:,
          # Query param: The accountId that is associated with this marketing event in the
          # external event application
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
