# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class Emails
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Marketing::EmailCreateParams} for more details.
        #
        # @overload create(active_domain: nil, archived: nil, business_unit_id: nil, campaign: nil, content: nil, feedback_survey_id: nil, folder_id_v2: nil, from: nil, jitter_send_time: nil, language: nil, name: nil, publish_date: nil, rss_data: nil, send_on_publish: nil, state: nil, subcategory: nil, subject: nil, subscription_details: nil, testing: nil, to: nil, webversion: nil, request_options: {})
        #
        # @param active_domain [String] The active domain of the email.
        #
        # @param archived [Boolean] Determines if the email is archived or not.
        #
        # @param business_unit_id [Integer] The ID of the business unit associated with the email.
        #
        # @param campaign [String] The ID of the campaign this email is associated to.
        #
        # @param content [HubSpotSDK::Models::Marketing::PublicEmailContent]
        #
        # @param feedback_survey_id [String] The ID of the feedback survey linked to the email.
        #
        # @param folder_id_v2 [Integer] The ID of the folder where the email will be stored.
        #
        # @param from [HubSpotSDK::Models::Marketing::PublicEmailFromDetails]
        #
        # @param jitter_send_time [Boolean] Determines whether the email send time should be randomized to avoid sending all
        #
        # @param language [Symbol, HubSpotSDK::Models::Marketing::EmailCreateRequest::Language] The language code for the email, such as 'en' for English.
        #
        # @param name [String] The name of the email, as displayed on the email dashboard.
        #
        # @param publish_date [Time] The date and time the email is scheduled for, in ISO8601 representation. This is
        #
        # @param rss_data [HubSpotSDK::Models::Marketing::PublicRssEmailDetails]
        #
        # @param send_on_publish [Boolean] Determines whether the email will be sent immediately on publish.
        #
        # @param state [Symbol, HubSpotSDK::Models::Marketing::EmailCreateRequest::State] The email state.
        #
        # @param subcategory [Symbol, HubSpotSDK::Models::Marketing::EmailCreateRequest::Subcategory] The email subcategory.
        #
        # @param subject [String] The subject of the email.
        #
        # @param subscription_details [HubSpotSDK::Models::Marketing::PublicEmailSubscriptionDetails]
        #
        # @param testing [HubSpotSDK::Models::Marketing::PublicEmailTestingDetails]
        #
        # @param to [HubSpotSDK::Models::Marketing::PublicEmailToDetails]
        #
        # @param webversion [HubSpotSDK::Models::Marketing::PublicWebversionDetails]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubSpotSDK::Models::Marketing::EmailCreateParams
        def create(params = {})
          parsed, options = HubSpotSDK::Marketing::EmailCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/emails/2026-03",
            body: parsed,
            model: HubSpotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Marketing::EmailUpdateParams} for more details.
        #
        # Change properties of a marketing email.
        #
        # @overload update(email_id, body_archived: nil, active_domain: nil, business_unit_id: nil, campaign: nil, content: nil, folder_id_v2: nil, from: nil, jitter_send_time: nil, language: nil, name: nil, publish_date: nil, rss_data: nil, send_on_publish: nil, state: nil, subcategory: nil, subject: nil, subscription_details: nil, testing: nil, to: nil, webversion: nil, request_options: {})
        #
        # @param email_id [String] Path param
        #
        # @param body_archived [Boolean] Body param: Determines if the email is archived or not.
        #
        # @param active_domain [String] Body param: The active domain of the email.
        #
        # @param business_unit_id [Integer] Body param: The ID of the business unit associated with the email.
        #
        # @param campaign [String] Body param: The ID of the campaign this email is associated to.
        #
        # @param content [HubSpotSDK::Models::Marketing::PublicEmailContent] Body param
        #
        # @param folder_id_v2 [Integer] Body param: The ID of the folder where the email will be stored.
        #
        # @param from [HubSpotSDK::Models::Marketing::PublicEmailFromDetails] Body param
        #
        # @param jitter_send_time [Boolean] Body param: Determines whether the email send time should be randomized to avoid
        #
        # @param language [Symbol, HubSpotSDK::Models::Marketing::EmailUpdateRequest::Language] Body param: The language code for the email, such as 'en' for English.
        #
        # @param name [String] Body param: The name of the email, as displayed on the email dashboard.
        #
        # @param publish_date [Time] Body param: The date and time the email is scheduled for, in ISO8601 representat
        #
        # @param rss_data [HubSpotSDK::Models::Marketing::PublicRssEmailDetails] Body param
        #
        # @param send_on_publish [Boolean] Body param: Determines whether the email will be sent immediately on publish.
        #
        # @param state [Symbol, HubSpotSDK::Models::Marketing::EmailUpdateRequest::State] Body param: The email state.
        #
        # @param subcategory [Symbol, HubSpotSDK::Models::Marketing::EmailUpdateRequest::Subcategory] Body param: The email subcategory.
        #
        # @param subject [String] Body param: The subject of the email.
        #
        # @param subscription_details [HubSpotSDK::Models::Marketing::PublicEmailSubscriptionDetails] Body param
        #
        # @param testing [HubSpotSDK::Models::Marketing::PublicEmailTestingDetails] Body param
        #
        # @param to [HubSpotSDK::Models::Marketing::PublicEmailToDetails] Body param
        #
        # @param webversion [HubSpotSDK::Models::Marketing::PublicWebversionDetails] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubSpotSDK::Models::Marketing::EmailUpdateParams
        def update(email_id, params = {})
          query_params = [:query_archived]
          parsed, options = HubSpotSDK::Marketing::EmailUpdateParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :patch,
            path: ["marketing/emails/2026-03/%1$s", email_id],
            query: query.transform_keys(query_archived: "archived"),
            body: parsed.except(*query_params),
            model: HubSpotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Marketing::EmailListParams} for more details.
        #
        # @overload list(after: nil, archived: nil, campaign: nil, created_after: nil, created_at: nil, created_before: nil, included_properties: nil, include_stats: nil, is_published: nil, limit: nil, marketing_campaign_names: nil, published_after: nil, published_at: nil, published_before: nil, sort: nil, type: nil, updated_after: nil, updated_at: nil, updated_before: nil, variant_stats: nil, workflow_names: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param campaign [String]
        #
        # @param created_after [Time]
        #
        # @param created_at [Time]
        #
        # @param created_before [Time]
        #
        # @param included_properties [Array<String>]
        #
        # @param include_stats [Boolean]
        #
        # @param is_published [Boolean]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param marketing_campaign_names [Boolean]
        #
        # @param published_after [Time]
        #
        # @param published_at [Time]
        #
        # @param published_before [Time]
        #
        # @param sort [Array<String>]
        #
        # @param type [Symbol, HubSpotSDK::Models::Marketing::EmailListParams::Type]
        #
        # @param updated_after [Time]
        #
        # @param updated_at [Time]
        #
        # @param updated_before [Time]
        #
        # @param variant_stats [Boolean]
        #
        # @param workflow_names [Boolean]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Marketing::PublicEmail>]
        #
        # @see HubSpotSDK::Models::Marketing::EmailListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Marketing::EmailListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "marketing/emails/2026-03",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              included_properties: "includedProperties",
              include_stats: "includeStats",
              is_published: "isPublished",
              marketing_campaign_names: "marketingCampaignNames",
              published_after: "publishedAfter",
              published_at: "publishedAt",
              published_before: "publishedBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore",
              variant_stats: "variantStats",
              workflow_names: "workflowNames"
            ),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Delete a marketing email by its ID
        #
        # @overload delete(email_id, archived: nil, request_options: {})
        #
        # @param email_id [String]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Marketing::EmailDeleteParams
        def delete(email_id, params = {})
          parsed, options = HubSpotSDK::Marketing::EmailDeleteParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["marketing/emails/2026-03/%1$s", email_id],
            query: query,
            model: NilClass,
            options: options
          )
        end

        # This will create a duplicate email with the same properties as the original,
        # with the exception of a unique ID.
        #
        # @overload clone_(id:, clone_name: nil, language: nil, request_options: {})
        #
        # @param id [String] The email ID.
        #
        # @param clone_name [String] The name to assign to the cloned email.
        #
        # @param language [String] The language code for the cloned email, such as 'en' for English.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubSpotSDK::Models::Marketing::EmailCloneParams
        def clone_(params)
          parsed, options = HubSpotSDK::Marketing::EmailCloneParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/emails/2026-03/clone",
            body: parsed,
            model: HubSpotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Create a variation of a marketing email for an A/B test. The new variation will
        # be created as a draft. If an active variation already exists, a new one won't be
        # created.
        #
        # @overload create_ab_test_variation(content_id:, variation_name:, request_options: {})
        #
        # @param content_id [String] ID of the object to test.
        #
        # @param variation_name [String] Name of A/B test variation.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubSpotSDK::Models::Marketing::EmailCreateAbTestVariationParams
        def create_ab_test_variation(params)
          parsed, options = HubSpotSDK::Marketing::EmailCreateAbTestVariationParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/emails/2026-03/ab-test/create-variation",
            body: parsed,
            model: HubSpotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Use this endpoint to get aggregated statistics of emails sent in a specified
        # time span. It also returns the list of emails that were sent during the time
        # span.
        #
        # @overload get(email_ids: nil, end_timestamp: nil, property: nil, start_timestamp: nil, request_options: {})
        #
        # @param email_ids [Array<Integer>]
        # @param end_timestamp [String]
        # @param property [String]
        # @param start_timestamp [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::AggregateEmailStatistics]
        #
        # @see HubSpotSDK::Models::Marketing::EmailGetParams
        def get(params = {})
          parsed, options = HubSpotSDK::Marketing::EmailGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "marketing/emails/2026-03/statistics/list",
            query: query.transform_keys(
              email_ids: "emailIds",
              end_timestamp: "endTimestamp",
              start_timestamp: "startTimestamp"
            ),
            model: HubSpotSDK::Marketing::AggregateEmailStatistics,
            options: options
          )
        end

        # This endpoint lets you obtain the variation of an A/B marketing email. If the
        # email is variation A (master) it will return variation B (variant) and vice
        # versa.
        #
        # @overload get_ab_test_variation(email_id, archived: nil, included_properties: nil, include_stats: nil, marketing_campaign_names: nil, variant_stats: nil, workflow_names: nil, request_options: {})
        #
        # @param email_id [String]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param included_properties [Array<String>]
        #
        # @param include_stats [Boolean]
        #
        # @param marketing_campaign_names [Boolean]
        #
        # @param variant_stats [Boolean]
        #
        # @param workflow_names [Boolean]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubSpotSDK::Models::Marketing::EmailGetAbTestVariationParams
        def get_ab_test_variation(email_id, params = {})
          parsed, options = HubSpotSDK::Marketing::EmailGetAbTestVariationParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["marketing/emails/2026-03/%1$s/ab-test/get-variation", email_id],
            query: query.transform_keys(
              included_properties: "includedProperties",
              include_stats: "includeStats",
              marketing_campaign_names: "marketingCampaignNames",
              variant_stats: "variantStats",
              workflow_names: "workflowNames"
            ),
            model: HubSpotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Get the draft version of an email (if it exists). If no draft version exists,
        # the published email is returned.
        #
        # @overload get_draft(email_id, request_options: {})
        #
        # @param email_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubSpotSDK::Models::Marketing::EmailGetDraftParams
        def get_draft(email_id, params = {})
          @client.request(
            method: :get,
            path: ["marketing/emails/2026-03/%1$s/draft", email_id],
            model: HubSpotSDK::Marketing::PublicEmail,
            options: params[:request_options]
          )
        end

        # Get aggregated statistics in intervals for a specified time span. Each interval
        # contains aggregated statistics of the emails that were sent in that time.
        #
        # @overload get_histogram(email_ids: nil, end_timestamp: nil, interval: nil, start_timestamp: nil, request_options: {})
        #
        # @param email_ids [Array<Integer>]
        # @param end_timestamp [String]
        # @param interval [Symbol, HubSpotSDK::Models::Marketing::EmailGetHistogramParams::Interval]
        # @param start_timestamp [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::CollectionResponseWithTotalEmailStatisticInterval]
        #
        # @see HubSpotSDK::Models::Marketing::EmailGetHistogramParams
        def get_histogram(params = {})
          parsed, options = HubSpotSDK::Marketing::EmailGetHistogramParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "marketing/emails/2026-03/statistics/histogram",
            query: query.transform_keys(
              email_ids: "emailIds",
              end_timestamp: "endTimestamp",
              start_timestamp: "startTimestamp"
            ),
            model: HubSpotSDK::Marketing::CollectionResponseWithTotalEmailStatisticInterval,
            options: options
          )
        end

        # Get a specific revision of a marketing email.
        #
        # @overload get_revision(revision_id, email_id:, request_options: {})
        #
        # @param revision_id [String]
        # @param email_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmailVersion]
        #
        # @see HubSpotSDK::Models::Marketing::EmailGetRevisionParams
        def get_revision(revision_id, params)
          parsed, options = HubSpotSDK::Marketing::EmailGetRevisionParams.dump_request(params)
          email_id =
            parsed.delete(:email_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["marketing/emails/2026-03/%1$s/revisions/%2$s", email_id, revision_id],
            model: HubSpotSDK::Marketing::PublicEmailVersion,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Marketing::EmailListRevisionsParams} for more details.
        #
        # Get a list of all versions of a marketing email, with each entry including the
        # full state of that particular version. To view the most recent version, sort by
        # the updatedAt parameter.
        #
        # @overload list_revisions(email_id, after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param email_id [String]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param before [String]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Marketing::VersionPublicEmail>]
        #
        # @see HubSpotSDK::Models::Marketing::EmailListRevisionsParams
        def list_revisions(email_id, params = {})
          parsed, options = HubSpotSDK::Marketing::EmailListRevisionsParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["marketing/emails/2026-03/%1$s/revisions", email_id],
            query: query,
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Marketing::VersionPublicEmail,
            options: options
          )
        end

        # If you have a Marketing Hub Enterprise account or the transactional email
        # add-on, you can use this endpoint to publish an automated email or send/schedule
        # a regular email.
        #
        # @overload publish(email_id, request_options: {})
        #
        # @param email_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Marketing::EmailPublishParams
        def publish(email_id, params = {})
          @client.request(
            method: :post,
            path: ["marketing/emails/2026-03/%1$s/publish", email_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Resets the draft back to a copy of the live object.
        #
        # @overload reset_draft(email_id, request_options: {})
        #
        # @param email_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Marketing::EmailResetDraftParams
        def reset_draft(email_id, params = {})
          @client.request(
            method: :post,
            path: ["marketing/emails/2026-03/%1$s/draft/reset", email_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Restores a previous revision of a marketing email. The current revision becomes
        # old, and the restored revision is given a new version number.
        #
        # @overload restore_revision(revision_id, email_id:, request_options: {})
        #
        # @param revision_id [String]
        # @param email_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Marketing::EmailRestoreRevisionParams
        def restore_revision(revision_id, params)
          parsed, options = HubSpotSDK::Marketing::EmailRestoreRevisionParams.dump_request(params)
          email_id =
            parsed.delete(:email_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["marketing/emails/2026-03/%1$s/revisions/%2$s/restore", email_id, revision_id],
            model: NilClass,
            options: options
          )
        end

        # Restores a previous revision of a marketing email to DRAFT state. If there is
        # currently something in the draft for that object, it is overwritten.
        #
        # @overload restore_revision_to_draft(revision_id, email_id:, request_options: {})
        #
        # @param revision_id [Integer]
        # @param email_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubSpotSDK::Models::Marketing::EmailRestoreRevisionToDraftParams
        def restore_revision_to_draft(revision_id, params)
          parsed, options = HubSpotSDK::Marketing::EmailRestoreRevisionToDraftParams.dump_request(params)
          email_id =
            parsed.delete(:email_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["marketing/emails/2026-03/%1$s/revisions/%2$s/restore-to-draft", email_id, revision_id],
            model: HubSpotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # If you have a Marketing Hub Enterprise account or the transactional email
        # add-on, you can use this endpoint to unpublish an automated email or cancel a
        # regular email. If the email is already in the process of being sent, canceling
        # might not be possible.
        #
        # @overload unpublish(email_id, request_options: {})
        #
        # @param email_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Marketing::EmailUnpublishParams
        def unpublish(email_id, params = {})
          @client.request(
            method: :post,
            path: ["marketing/emails/2026-03/%1$s/unpublish", email_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Marketing::EmailUpdateDraftParams} for more details.
        #
        # Create or update the draft version of a marketing email. If no draft exists, the
        # system creates a draft from the current “live” email then applies the request
        # body to that draft. The draft version only lives on the buffer—the email is not
        # cloned.
        #
        # @overload update_draft(email_id, active_domain: nil, archived: nil, business_unit_id: nil, campaign: nil, content: nil, folder_id_v2: nil, from: nil, jitter_send_time: nil, language: nil, name: nil, publish_date: nil, rss_data: nil, send_on_publish: nil, state: nil, subcategory: nil, subject: nil, subscription_details: nil, testing: nil, to: nil, webversion: nil, request_options: {})
        #
        # @param email_id [String]
        #
        # @param active_domain [String] The active domain of the email.
        #
        # @param archived [Boolean] Determines if the email is archived or not.
        #
        # @param business_unit_id [Integer] The ID of the business unit associated with the email.
        #
        # @param campaign [String] The ID of the campaign this email is associated to.
        #
        # @param content [HubSpotSDK::Models::Marketing::PublicEmailContent]
        #
        # @param folder_id_v2 [Integer] The ID of the folder where the email will be stored.
        #
        # @param from [HubSpotSDK::Models::Marketing::PublicEmailFromDetails]
        #
        # @param jitter_send_time [Boolean] Determines whether the email send time should be randomized to avoid sending all
        #
        # @param language [Symbol, HubSpotSDK::Models::Marketing::EmailUpdateRequest::Language] The language code for the email, such as 'en' for English.
        #
        # @param name [String] The name of the email, as displayed on the email dashboard.
        #
        # @param publish_date [Time] The date and time the email is scheduled for, in ISO8601 representation. This is
        #
        # @param rss_data [HubSpotSDK::Models::Marketing::PublicRssEmailDetails]
        #
        # @param send_on_publish [Boolean] Determines whether the email will be sent immediately on publish.
        #
        # @param state [Symbol, HubSpotSDK::Models::Marketing::EmailUpdateRequest::State] The email state.
        #
        # @param subcategory [Symbol, HubSpotSDK::Models::Marketing::EmailUpdateRequest::Subcategory] The email subcategory.
        #
        # @param subject [String] The subject of the email.
        #
        # @param subscription_details [HubSpotSDK::Models::Marketing::PublicEmailSubscriptionDetails]
        #
        # @param testing [HubSpotSDK::Models::Marketing::PublicEmailTestingDetails]
        #
        # @param to [HubSpotSDK::Models::Marketing::PublicEmailToDetails]
        #
        # @param webversion [HubSpotSDK::Models::Marketing::PublicWebversionDetails]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubSpotSDK::Models::Marketing::EmailUpdateDraftParams
        def update_draft(email_id, params = {})
          parsed, options = HubSpotSDK::Marketing::EmailUpdateDraftParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["marketing/emails/2026-03/%1$s/draft", email_id],
            body: parsed,
            model: HubSpotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
