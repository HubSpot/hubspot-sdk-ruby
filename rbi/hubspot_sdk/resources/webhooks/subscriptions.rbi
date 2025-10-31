# typed: strong

module HubspotSDK
  module Resources
    class Webhooks
      class Subscriptions
        # Create new event subscription for the specified app.
        sig do
          params(
            app_id: Integer,
            event_type:
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol,
            active: T::Boolean,
            object_type_id: String,
            property_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionResponse)
        end
        def create(
          # The ID of the app.
          app_id,
          # Type of event to listen for. Can be one of `create`, `delete`,
          # `deletedForPrivacy`, or `propertyChange`.
          event_type:,
          # Determines if the subscription is active or paused. Defaults to false.
          active: nil,
          object_type_id: nil,
          # The internal name of the property to monitor for changes. Only applies when
          # `eventType` is `propertyChange`.
          property_name: nil,
          request_options: {}
        )
        end

        # Update an existing event subscription by ID.
        sig do
          params(
            subscription_id: Integer,
            app_id: Integer,
            active: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionResponse)
        end
        def update(
          # Path param: The ID of the event subscription.
          subscription_id,
          # Path param: The ID of the app.
          app_id:,
          # Body param: Determines if the subscription is active or paused.
          active: nil,
          request_options: {}
        )
        end

        # Retrieve event subscriptions for the specified app.
        sig do
          params(
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionListResponse)
        end
        def list(
          # The ID of the app.
          app_id,
          request_options: {}
        )
        end

        # Delete an existing event subscription by ID.
        sig do
          params(
            subscription_id: Integer,
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID of the event subscription.
          subscription_id,
          # The ID of the app.
          app_id:,
          request_options: {}
        )
        end

        # Retrieve a specific event subscription by ID.
        sig do
          params(
            subscription_id: Integer,
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionResponse)
        end
        def get(
          # The ID of the event subscription.
          subscription_id,
          # The ID of the app.
          app_id:,
          request_options: {}
        )
        end

        # Batch create event subscriptions for the specified app.
        sig do
          params(
            app_id: Integer,
            inputs:
              T::Array[
                HubspotSDK::Webhooks::SubscriptionBatchUpdateRequest::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::BatchResponseSubscriptionResponse)
        end
        def update_batch(
          # The ID of the app.
          app_id,
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
