# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Subscriptions
        # Cancel an active commerce subscription using the subscription ID.
        sig do
          params(
            object_id_: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def cancel(
          # subscription CRM id
          object_id_,
          request_options: {}
        )
        end

        # Pause an active subscription using the subscription ID.
        sig do
          params(
            object_id_: Integer,
            pause_reason: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def pause(
          # subscription CRM id
          object_id_,
          pause_reason: nil,
          request_options: {}
        )
        end

        # Resume a previously paused subscription using the subscription ID.
        sig do
          params(
            object_id_: Integer,
            proposed_next_billing_date: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def unpause(
          # subscription CRM id
          object_id_,
          proposed_next_billing_date:,
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
