# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Emails
        sig do
          params(
            active_domain: String,
            archived: T::Boolean,
            business_unit_id: Integer,
            campaign: String,
            content: HubspotSDK::Marketing::PublicEmailContent::OrHash,
            feedback_survey_id: String,
            folder_id_v2: Integer,
            from: HubspotSDK::Marketing::PublicEmailFromDetails::OrHash,
            jitter_send_time: T::Boolean,
            language:
              HubspotSDK::Marketing::EmailCreateRequest::Language::OrSymbol,
            name: String,
            publish_date: Time,
            rss_data: HubspotSDK::Marketing::PublicRssEmailDetails::OrHash,
            send_on_publish: T::Boolean,
            state: HubspotSDK::Marketing::EmailCreateRequest::State::OrSymbol,
            subcategory:
              HubspotSDK::Marketing::EmailCreateRequest::Subcategory::OrSymbol,
            subject: String,
            subscription_details:
              HubspotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash,
            testing: HubspotSDK::Marketing::PublicEmailTestingDetails::OrHash,
            to: HubspotSDK::Marketing::PublicEmailToDetails::OrHash,
            webversion: HubspotSDK::Marketing::PublicWebversionDetails::OrHash,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def create(
          # The active domain of the email.
          active_domain: nil,
          # Determines if the email is archived or not.
          archived: nil,
          # The ID of the business unit associated with the email.
          business_unit_id: nil,
          # The ID of the campaign this email is associated to.
          campaign: nil,
          content: nil,
          # The ID of the feedback survey linked to the email.
          feedback_survey_id: nil,
          # The ID of the folder where the email will be stored.
          folder_id_v2: nil,
          from: nil,
          # Determines whether the email send time should be randomized to avoid sending all
          # emails at the exact same time.
          jitter_send_time: nil,
          # The language code for the email, such as 'en' for English.
          language: nil,
          # The name of the email, as displayed on the email dashboard.
          name: nil,
          # The date and time the email is scheduled for, in ISO8601 representation. This is
          # only used in local time or scheduled emails.
          publish_date: nil,
          rss_data: nil,
          # Determines whether the email will be sent immediately on publish.
          send_on_publish: nil,
          # The email state.
          state: nil,
          # The email subcategory.
          subcategory: nil,
          # The subject of the email.
          subject: nil,
          subscription_details: nil,
          testing: nil,
          to: nil,
          webversion: nil,
          request_options: {}
        )
        end

        # Change properties of a marketing email.
        sig do
          params(
            email_id: String,
            body_archived: T::Boolean,
            active_domain: String,
            business_unit_id: Integer,
            campaign: String,
            content: HubspotSDK::Marketing::PublicEmailContent::OrHash,
            folder_id_v2: Integer,
            from: HubspotSDK::Marketing::PublicEmailFromDetails::OrHash,
            jitter_send_time: T::Boolean,
            language:
              HubspotSDK::Marketing::EmailUpdateRequest::Language::OrSymbol,
            name: String,
            publish_date: Time,
            rss_data: HubspotSDK::Marketing::PublicRssEmailDetails::OrHash,
            send_on_publish: T::Boolean,
            state: HubspotSDK::Marketing::EmailUpdateRequest::State::OrSymbol,
            subcategory:
              HubspotSDK::Marketing::EmailUpdateRequest::Subcategory::OrSymbol,
            subject: String,
            subscription_details:
              HubspotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash,
            testing: HubspotSDK::Marketing::PublicEmailTestingDetails::OrHash,
            to: HubspotSDK::Marketing::PublicEmailToDetails::OrHash,
            webversion: HubspotSDK::Marketing::PublicWebversionDetails::OrHash,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def update(
          # Path param
          email_id,
          # Body param: Determines if the email is archived or not.
          body_archived: nil,
          # Body param: The active domain of the email.
          active_domain: nil,
          # Body param: The ID of the business unit associated with the email.
          business_unit_id: nil,
          # Body param: The ID of the campaign this email is associated to.
          campaign: nil,
          # Body param
          content: nil,
          # Body param: The ID of the folder where the email will be stored.
          folder_id_v2: nil,
          # Body param
          from: nil,
          # Body param: Determines whether the email send time should be randomized to avoid
          # sending all emails at the exact same time.
          jitter_send_time: nil,
          # Body param: The language code for the email, such as 'en' for English.
          language: nil,
          # Body param: The name of the email, as displayed on the email dashboard.
          name: nil,
          # Body param: The date and time the email is scheduled for, in ISO8601
          # representation. This is only used in local time or scheduled emails.
          publish_date: nil,
          # Body param
          rss_data: nil,
          # Body param: Determines whether the email will be sent immediately on publish.
          send_on_publish: nil,
          # Body param: The email state.
          state: nil,
          # Body param: The email subcategory.
          subcategory: nil,
          # Body param: The subject of the email.
          subject: nil,
          # Body param
          subscription_details: nil,
          # Body param
          testing: nil,
          # Body param
          to: nil,
          # Body param
          webversion: nil,
          request_options: {}
        )
        end

        sig do
          params(
            after: String,
            archived: T::Boolean,
            campaign: String,
            created_after: Time,
            created_at: Time,
            created_before: Time,
            included_properties: T::Array[String],
            include_stats: T::Boolean,
            is_published: T::Boolean,
            limit: Integer,
            marketing_campaign_names: T::Boolean,
            published_after: Time,
            published_at: Time,
            published_before: Time,
            sort: T::Array[String],
            type: HubspotSDK::Marketing::EmailListParams::Type::OrSymbol,
            updated_after: Time,
            updated_at: Time,
            updated_before: Time,
            variant_stats: T::Boolean,
            workflow_names: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Marketing::PublicEmail]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          campaign: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          included_properties: nil,
          include_stats: nil,
          is_published: nil,
          # The maximum number of results to display per page.
          limit: nil,
          marketing_campaign_names: nil,
          published_after: nil,
          published_at: nil,
          published_before: nil,
          sort: nil,
          type: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
          variant_stats: nil,
          workflow_names: nil,
          request_options: {}
        )
        end

        # Delete a marketing email by its ID
        sig do
          params(
            email_id: String,
            archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          email_id,
          # Whether to return only results that have been archived.
          archived: nil,
          request_options: {}
        )
        end

        # This will create a duplicate email with the same properties as the original,
        # with the exception of a unique ID.
        sig do
          params(
            id: String,
            clone_name: String,
            language: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def clone_(
          # The email ID.
          id:,
          # The name to assign to the cloned email.
          clone_name: nil,
          # The language code for the cloned email, such as 'en' for English.
          language: nil,
          request_options: {}
        )
        end

        # Create a variation of a marketing email for an A/B test. The new variation will
        # be created as a draft. If an active variation already exists, a new one won't be
        # created.
        sig do
          params(
            content_id: String,
            variation_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def create_ab_test_variation(
          # ID of the object to test.
          content_id:,
          # Name of A/B test variation.
          variation_name:,
          request_options: {}
        )
        end

        # Use this endpoint to get aggregated statistics of emails sent in a specified
        # time span. It also returns the list of emails that were sent during the time
        # span.
        sig do
          params(
            email_ids: T::Array[Integer],
            end_timestamp: String,
            property: String,
            start_timestamp: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::AggregateEmailStatistics)
        end
        def get(
          email_ids: nil,
          end_timestamp: nil,
          property: nil,
          start_timestamp: nil,
          request_options: {}
        )
        end

        # This endpoint lets you obtain the variation of an A/B marketing email. If the
        # email is variation A (master) it will return variation B (variant) and vice
        # versa.
        sig do
          params(
            email_id: String,
            archived: T::Boolean,
            included_properties: T::Array[String],
            include_stats: T::Boolean,
            marketing_campaign_names: T::Boolean,
            variant_stats: T::Boolean,
            workflow_names: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def get_ab_test_variation(
          email_id,
          # Whether to return only results that have been archived.
          archived: nil,
          included_properties: nil,
          include_stats: nil,
          marketing_campaign_names: nil,
          variant_stats: nil,
          workflow_names: nil,
          request_options: {}
        )
        end

        # Get the draft version of an email (if it exists). If no draft version exists,
        # the published email is returned.
        sig do
          params(
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def get_draft(email_id, request_options: {})
        end

        # Get aggregated statistics in intervals for a specified time span. Each interval
        # contains aggregated statistics of the emails that were sent in that time.
        sig do
          params(
            email_ids: T::Array[Integer],
            end_timestamp: String,
            interval:
              HubspotSDK::Marketing::EmailGetHistogramParams::Interval::OrSymbol,
            start_timestamp: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Marketing::CollectionResponseWithTotalEmailStatisticInterval
          )
        end
        def get_histogram(
          email_ids: nil,
          end_timestamp: nil,
          interval: nil,
          start_timestamp: nil,
          request_options: {}
        )
        end

        # Get a specific revision of a marketing email.
        sig do
          params(
            revision_id: String,
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmailVersion)
        end
        def get_revision(revision_id, email_id:, request_options: {})
        end

        # Get a list of all versions of a marketing email, with each entry including the
        # full state of that particular version. To view the most recent version, sort by
        # the updatedAt parameter.
        sig do
          params(
            email_id: String,
            after: String,
            before: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Marketing::VersionPublicEmail
            ]
          )
        end
        def list_revisions(
          email_id,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # If you have a Marketing Hub Enterprise account or the transactional email
        # add-on, you can use this endpoint to publish an automated email or send/schedule
        # a regular email.
        sig do
          params(
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def publish(email_id, request_options: {})
        end

        # Resets the draft back to a copy of the live object.
        sig do
          params(
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def reset_draft(email_id, request_options: {})
        end

        # Restores a previous revision of a marketing email. The current revision becomes
        # old, and the restored revision is given a new version number.
        sig do
          params(
            revision_id: String,
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def restore_revision(revision_id, email_id:, request_options: {})
        end

        # Restores a previous revision of a marketing email to DRAFT state. If there is
        # currently something in the draft for that object, it is overwritten.
        sig do
          params(
            revision_id: Integer,
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def restore_revision_to_draft(
          revision_id,
          email_id:,
          request_options: {}
        )
        end

        # If you have a Marketing Hub Enterprise account or the transactional email
        # add-on, you can use this endpoint to unpublish an automated email or cancel a
        # regular email. If the email is already in the process of being sent, canceling
        # might not be possible.
        sig do
          params(
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def unpublish(email_id, request_options: {})
        end

        # Create or update the draft version of a marketing email. If no draft exists, the
        # system creates a draft from the current “live” email then applies the request
        # body to that draft. The draft version only lives on the buffer—the email is not
        # cloned.
        sig do
          params(
            email_id: String,
            active_domain: String,
            archived: T::Boolean,
            business_unit_id: Integer,
            campaign: String,
            content: HubspotSDK::Marketing::PublicEmailContent::OrHash,
            folder_id_v2: Integer,
            from: HubspotSDK::Marketing::PublicEmailFromDetails::OrHash,
            jitter_send_time: T::Boolean,
            language:
              HubspotSDK::Marketing::EmailUpdateRequest::Language::OrSymbol,
            name: String,
            publish_date: Time,
            rss_data: HubspotSDK::Marketing::PublicRssEmailDetails::OrHash,
            send_on_publish: T::Boolean,
            state: HubspotSDK::Marketing::EmailUpdateRequest::State::OrSymbol,
            subcategory:
              HubspotSDK::Marketing::EmailUpdateRequest::Subcategory::OrSymbol,
            subject: String,
            subscription_details:
              HubspotSDK::Marketing::PublicEmailSubscriptionDetails::OrHash,
            testing: HubspotSDK::Marketing::PublicEmailTestingDetails::OrHash,
            to: HubspotSDK::Marketing::PublicEmailToDetails::OrHash,
            webversion: HubspotSDK::Marketing::PublicWebversionDetails::OrHash,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def update_draft(
          email_id,
          # The active domain of the email.
          active_domain: nil,
          # Determines if the email is archived or not.
          archived: nil,
          # The ID of the business unit associated with the email.
          business_unit_id: nil,
          # The ID of the campaign this email is associated to.
          campaign: nil,
          content: nil,
          # The ID of the folder where the email will be stored.
          folder_id_v2: nil,
          from: nil,
          # Determines whether the email send time should be randomized to avoid sending all
          # emails at the exact same time.
          jitter_send_time: nil,
          # The language code for the email, such as 'en' for English.
          language: nil,
          # The name of the email, as displayed on the email dashboard.
          name: nil,
          # The date and time the email is scheduled for, in ISO8601 representation. This is
          # only used in local time or scheduled emails.
          publish_date: nil,
          rss_data: nil,
          # Determines whether the email will be sent immediately on publish.
          send_on_publish: nil,
          # The email state.
          state: nil,
          # The email subcategory.
          subcategory: nil,
          # The subject of the email.
          subject: nil,
          subscription_details: nil,
          testing: nil,
          to: nil,
          webversion: nil,
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
