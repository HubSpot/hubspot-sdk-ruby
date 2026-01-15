# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Emails
        sig { returns(HubspotSDK::Resources::Marketing::Emails::Statistics) }
        attr_reader :statistics

        # Use this endpoint to create a new marketing email.
        sig do
          params(
            name: String,
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
          # The name of the email, as displayed on the email dashboard.
          name:,
          # The active domain of the email.
          active_domain: nil,
          # Determines if the email is archived or not.
          archived: nil,
          business_unit_id: nil,
          # The ID of the campaign this email is associated to.
          campaign: nil,
          # Data structure representing the content of the email.
          content: nil,
          # The ID of the feedback survey linked to the email.
          feedback_survey_id: nil,
          folder_id_v2: nil,
          # Data structure representing the from fields on the email.
          from: nil,
          jitter_send_time: nil,
          language: nil,
          # The date and time the email is scheduled for, in ISO8601 representation. This is
          # only used in local time or scheduled emails.
          publish_date: nil,
          # RSS related data if it is a blog or rss email.
          rss_data: nil,
          # Determines whether the email will be sent immediately on publish.
          send_on_publish: nil,
          # The email state.
          state: nil,
          # The email subcategory.
          subcategory: nil,
          # The subject of the email.
          subject: nil,
          # Data structure representing the subscription fields of the email.
          subscription_details: nil,
          # AB testing related data. This property is only returned for AB type emails.
          testing: nil,
          # Data structure representing the to fields of the email.
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
          # Path param: The ID of the marketing email that should get updated
          email_id,
          # Body param: Determines if the email is archived or not.
          body_archived: nil,
          # Body param: The active domain of the email.
          active_domain: nil,
          # Body param
          business_unit_id: nil,
          # Body param: The ID of the campaign this email is associated to.
          campaign: nil,
          # Body param: Data structure representing the content of the email.
          content: nil,
          # Body param
          folder_id_v2: nil,
          # Body param: Data structure representing the from fields on the email.
          from: nil,
          # Body param
          jitter_send_time: nil,
          # Body param
          language: nil,
          # Body param: The name of the email, as displayed on the email dashboard.
          name: nil,
          # Body param: The date and time the email is scheduled for, in ISO8601
          # representation. This is only used in local time or scheduled emails.
          publish_date: nil,
          # Body param: RSS related data if it is a blog or rss email.
          rss_data: nil,
          # Body param: Determines whether the email will be sent immediately on publish.
          send_on_publish: nil,
          # Body param: The email state.
          state: nil,
          # Body param: The email subcategory.
          subcategory: nil,
          # Body param: The subject of the email.
          subject: nil,
          # Body param: Data structure representing the subscription fields of the email.
          subscription_details: nil,
          # Body param: AB testing related data. This property is only returned for AB type
          # emails.
          testing: nil,
          # Body param: Data structure representing the to fields of the email.
          to: nil,
          # Body param
          webversion: nil,
          request_options: {}
        )
        end

        # The results can be filtered, allowing you to find a specific set of emails. See
        # the table below for a full list of filtering options.
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
            workflow_names: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Marketing::PublicEmail]
          )
        end
        def list(
          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          after: nil,
          # Specifies whether to return archived emails. Defaults to `false`.
          archived: nil,
          # Filter by campaign GUID. All emails will be returned if not present.
          campaign: nil,
          # Only return emails created after the specified time.
          created_after: nil,
          # Only return emails created at exactly the specified time.
          created_at: nil,
          # Only return emails created before the specified time.
          created_before: nil,
          # Limit the response to only include this specified list of properties.
          included_properties: nil,
          # Include statistics with emails.
          include_stats: nil,
          # Filter by published/draft emails. All emails will be returned if not present.
          is_published: nil,
          # The maximum number of results to return. Default is 10.
          limit: nil,
          # Include the names for any associated marketing campaigns.
          marketing_campaign_names: nil,
          published_after: nil,
          published_at: nil,
          published_before: nil,
          # Specifies which fields to use for sorting results. Valid fields are `name`,
          # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
          # default.
          sort: nil,
          # Email types to be filtered by. Multiple types can be included. All emails will
          # be returned if not present.
          type: nil,
          # Only return emails last updated after the specified time.
          updated_after: nil,
          # Only return emails last updated at exactly the specified time.
          updated_at: nil,
          # Only return emails last updated before the specified time.
          updated_before: nil,
          # Include the names of any workflows associated with the returned emails.
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
          # The ID of the marketing email to delete.
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
          # The unique identifier of the email to be cloned.
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

        # Get the details for a marketing email.
        sig do
          params(
            email_id: String,
            archived: T::Boolean,
            included_properties: T::Array[String],
            include_stats: T::Boolean,
            marketing_campaign_names: T::Boolean,
            workflow_names: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def get(
          # The marketing email ID.
          email_id,
          # Whether to return only results that have been archived.
          archived: nil,
          # Limit the response to only include the specified properties.
          included_properties: nil,
          # Include statistics with email.
          include_stats: nil,
          # If set to true, loads `campaignName` and `campaignUtm`.
          marketing_campaign_names: nil,
          # If set to true, loads workflows in which the email is used within a "send email"
          # action.
          workflow_names: nil,
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
            workflow_names: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicEmail)
        end
        def get_ab_test_variation(
          # The ID of an A/B marketing email.
          email_id,
          # Boolean variable to request archived email
          archived: nil,
          # List of properties to be returned in the API response
          included_properties: nil,
          # Boolean variable to request stats to be returned in response
          include_stats: nil,
          # Boolean variable to request name of the campaign in response
          marketing_campaign_names: nil,
          # Boolean variable to request name of the associated workflows in response
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
        def get_draft(
          # The marketing email ID.
          email_id,
          request_options: {}
        )
        end

        # Get a specific revision of a marketing email.
        sig do
          params(
            revision_id: String,
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::VersionPublicEmail)
        end
        def get_revision(
          # The ID of a revision.
          revision_id,
          # The marketing email ID.
          email_id:,
          request_options: {}
        )
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
          # The marketing email ID.
          email_id,
          # The cursor token value to get the next set of results. You can get this from the
          # `paging.next.after` JSON property of a paged response containing more results.
          after: nil,
          # The cursor token value to get the previous set of results. You can get this from
          # the `paging.prev.before` JSON property of a paged response containing more
          # results.
          before: nil,
          # The maximum number of results to return. Default is 10.
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
        def publish(
          # The marketing email ID.
          email_id,
          request_options: {}
        )
        end

        # Resets the draft back to a copy of the live object.
        sig do
          params(
            email_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def reset_draft(
          # The marketing email ID.
          email_id,
          request_options: {}
        )
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
        def restore_revision(
          # The ID of a revision.
          revision_id,
          # The marketing email ID.
          email_id:,
          request_options: {}
        )
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
          # The ID of a revision.
          revision_id,
          # The marketing email ID.
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
        def unpublish(
          # The ID of the email to unpublish.
          email_id,
          request_options: {}
        )
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
          # The marketing email ID.
          email_id,
          # The active domain of the email.
          active_domain: nil,
          # Determines if the email is archived or not.
          archived: nil,
          business_unit_id: nil,
          # The ID of the campaign this email is associated to.
          campaign: nil,
          # Data structure representing the content of the email.
          content: nil,
          folder_id_v2: nil,
          # Data structure representing the from fields on the email.
          from: nil,
          jitter_send_time: nil,
          language: nil,
          # The name of the email, as displayed on the email dashboard.
          name: nil,
          # The date and time the email is scheduled for, in ISO8601 representation. This is
          # only used in local time or scheduled emails.
          publish_date: nil,
          # RSS related data if it is a blog or rss email.
          rss_data: nil,
          # Determines whether the email will be sent immediately on publish.
          send_on_publish: nil,
          # The email state.
          state: nil,
          # The email subcategory.
          subcategory: nil,
          # The subject of the email.
          subject: nil,
          # Data structure representing the subscription fields of the email.
          subscription_details: nil,
          # AB testing related data. This property is only returned for AB type emails.
          testing: nil,
          # Data structure representing the to fields of the email.
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
