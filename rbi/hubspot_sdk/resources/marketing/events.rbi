# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Events
        sig { returns(HubspotSDK::Resources::Marketing::Events::Attendance) }
        attr_reader :attendance

        sig { returns(HubspotSDK::Resources::Marketing::Events::Events) }
        attr_reader :events

        sig do
          returns(HubspotSDK::Resources::Marketing::Events::ListAssociations)
        end
        attr_reader :list_associations

        sig do
          returns(HubspotSDK::Resources::Marketing::Events::Participations)
        end
        attr_reader :participations

        sig { returns(HubspotSDK::Resources::Marketing::Events::Settings) }
        attr_reader :settings

        sig do
          params(
            custom_properties: T::Array[HubspotSDK::PropertyValue::OrHash],
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
          # Indicates if the marketing event has been completed. Defaults to `false`
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

        sig do
          params(
            object_id_: String,
            custom_properties: T::Array[HubspotSDK::PropertyValue::OrHash],
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
          # The internal id of the marketing event in HubSpot.
          object_id_,
          custom_properties:,
          # The end date and time of the marketing event
          end_date_time: nil,
          # Indicates if the marketing event has been cancelled
          event_cancelled: nil,
          # The description of the marketing event
          event_description: nil,
          # The name of the marketing event
          event_name: nil,
          # The name of the organizer of the marketing event
          event_organizer: nil,
          # The type of the marketing event
          event_type: nil,
          # A URL in the external event application where the marketing event can be managed
          event_url: nil,
          # The start date and time of the marketing event
          start_date_time: nil,
          request_options: {}
        )
        end

        sig do
          params(
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The internal id of the marketing event in HubSpot.
          object_id_,
          request_options: {}
        )
        end

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::MarketingEventPublicObjectIDDeleteRequest::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def delete_batch(inputs:, request_options: {})
        end

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

        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_by_external_event_id(
          external_event_id,
          external_account_id:,
          request_options: {}
        )
        end

        sig do
          params(
            object_id_: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventPublicReadResponseV2)
        end
        def get(
          # The internal id of the marketing event in HubSpot.
          object_id_,
          request_options: {}
        )
        end

        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::MarketingEventPublicReadResponse)
        end
        def get_by_external_event_id(
          external_event_id,
          external_account_id:,
          request_options: {}
        )
        end

        sig do
          params(
            q: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging
          )
        end
        def search_by_external_event_id(q:, request_options: {})
        end

        sig do
          params(
            external_event_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponse
          )
        end
        def search_identifiers_by_external_event_id(
          # The id of the marketing event in the external event application.
          external_event_id,
          request_options: {}
        )
        end

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

        sig do
          params(
            external_event_id: String,
            external_account_id: String,
            custom_properties: T::Array[HubspotSDK::PropertyValue::OrHash],
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
          # Path param
          external_event_id,
          # Query param
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
          # Body param: Indicates if the marketing event has been completed. Defaults to
          # `false`
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

        sig do
          params(
            path_external_event_id: String,
            custom_properties: T::Array[HubspotSDK::PropertyValue::OrHash],
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
          # Indicates if the marketing event has been completed. Defaults to `false`
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
