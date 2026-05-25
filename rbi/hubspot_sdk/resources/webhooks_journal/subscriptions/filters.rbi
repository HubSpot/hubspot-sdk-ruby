# typed: strong

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Subscriptions
        class Filters
          # Create a new filter for a specific webhook subscription in the HubSpot account.
          # This endpoint allows you to define conditions that determine when a webhook
          # should be triggered. The filter is associated with a subscription identified by
          # its ID, and the request must include the filter details.
          sig do
            params(
              filter: HubSpotSDK::Filter::OrHash,
              subscription_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::FilterCreateResponse)
          end
          def create(
            # Defines a single condition for searching CRM objects, specifying the property to
            # filter on, the operator to use (such as equals, greater than, or contains), and
            # the value(s) to compare against.
            filter:,
            # The unique identifier of the subscription to which the filter will be applied.
            # It is an integer formatted as int64.
            subscription_id:,
            request_options: {}
          )
          end

          # Retrieve the filters associated with a specific webhook subscription. This
          # endpoint allows you to view the filters applied to a subscription, which can
          # help in managing and understanding the conditions set for webhook events.
          sig do
            params(
              subscription_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T::Array[HubSpotSDK::FilterResponse])
          end
          def list(
            # The unique identifier of the subscription for which to retrieve filters. This is
            # an integer value.
            subscription_id,
            request_options: {}
          )
          end

          # Remove a specific filter from the webhooks journal subscriptions. This operation
          # is useful for managing and cleaning up filters that are no longer needed. Once
          # deleted, the filter cannot be recovered.
          sig do
            params(
              filter_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The unique identifier of the filter to delete.
            filter_id,
            request_options: {}
          )
          end

          # Retrieve a specific filter associated with a webhook journal subscription. This
          # endpoint allows you to access the details of the filter identified by the
          # filterId, which is useful for managing and understanding the conditions applied
          # to webhook events.
          sig do
            params(
              filter_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::FilterResponse)
          end
          def get(
            # The unique identifier of the filter to retrieve. It is an integer value.
            filter_id,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
