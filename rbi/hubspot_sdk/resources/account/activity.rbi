# typed: strong

module HubspotSDK
  module Resources
    class Account
      class Activity
        # Retrieve activity history for user actions related to approvals, content
        # updates, CRM object updates, security activity, and more (Enterprise only).
        # Learn more about
        # [activities included in audit log exports](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history-in-a-centralized-audit-log?hubs_content=knowledge.hubspot.com/account-management/view-and-export-account-activity-history&hubs_content-cta=centralized%20audit%20log#data-included-in-the-centralized-audit-log).
        sig do
          params(
            acting_user_id: T::Array[Integer],
            after: String,
            limit: Integer,
            occurred_after: Time,
            occurred_before: Time,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Account::CollectionResponsePublicAPIUserActionEventForwardPaging
          )
        end
        def list_audit_logs(
          # The ID of a user, for retrieving user-specific logs.
          acting_user_id: nil,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # A timestamp, as a starting point for retrieving activity logs.
          occurred_after: nil,
          # A timestamp, as an end point for retrieving activity logs.
          occurred_before: nil,
          # Set to `occurredAt` to order results by the time of the event. By default,
          # events are ordered from oldest to newest.
          sort: nil,
          request_options: {}
        )
        end

        # Retrieve logs of user actions related to
        # [login activity](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history#account-login-history).
        sig do
          params(
            after: String,
            limit: Integer,
            user_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Account::CollectionResponsePublicLoginAuditForwardPaging
          )
        end
        def list_login_activities(
          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          after: nil,
          # The maximum number of results to display per page. Max value of limit is 200.
          limit: nil,
          # The ID of a user, for retrieving user-specific logs.
          user_id: nil,
          request_options: {}
        )
        end

        # Retrieve logs of user actions related to
        # [security activity](https://knowledge.hubspot.com/account-management/view-and-export-account-activity-history#security-activity-history).
        sig do
          params(
            after: String,
            from_timestamp: Integer,
            limit: Integer,
            to_timestamp: Integer,
            user_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Account::CollectionResponseHydratedCriticalActionForwardPaging
          )
        end
        def list_security_activities(
          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          after: nil,
          # The start time, for retrieving logs within a specific timeframe.
          from_timestamp: nil,
          # The maximum number of results to display per page. Max value of limit is 200.
          limit: nil,
          # The end time, for retrieving logs within a specific timeframe.
          to_timestamp: nil,
          # The ID of a user, for retrieving user-specific logs.
          user_id: nil,
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
