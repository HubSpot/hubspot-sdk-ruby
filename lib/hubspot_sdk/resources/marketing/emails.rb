# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Emails
        # @return [HubspotSDK::Resources::Marketing::Emails::Statistics]
        attr_reader :statistics

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EmailCreateParams} for more details.
        #
        # Use this endpoint to create a new marketing email.
        #
        # @overload create(name:, active_domain: nil, archived: nil, business_unit_id: nil, campaign: nil, content: nil, feedback_survey_id: nil, folder_id_v2: nil, from: nil, jitter_send_time: nil, language: nil, publish_date: nil, rss_data: nil, send_on_publish: nil, state: nil, subcategory: nil, subject: nil, subscription_details: nil, testing: nil, to: nil, webversion: nil, request_options: {})
        #
        # @param name [String] The name of the email, as displayed on the email dashboard.
        #
        # @param active_domain [String] The active domain of the email.
        #
        # @param archived [Boolean] Determines if the email is archived or not.
        #
        # @param business_unit_id [Integer]
        #
        # @param campaign [String] The ID of the campaign this email is associated to.
        #
        # @param content [HubspotSDK::Models::Marketing::PublicEmailContent] Data structure representing the content of the email.
        #
        # @param feedback_survey_id [String] The ID of the feedback survey linked to the email.
        #
        # @param folder_id_v2 [Integer]
        #
        # @param from [HubspotSDK::Models::Marketing::PublicEmailFromDetails] Data structure representing the from fields on the email.
        #
        # @param jitter_send_time [Boolean]
        #
        # @param language [Symbol, HubspotSDK::Models::Marketing::EmailCreateRequest::Language]
        #
        # @param publish_date [Time] The date and time the email is scheduled for, in ISO8601 representation. This is
        #
        # @param rss_data [HubspotSDK::Models::Marketing::PublicRssEmailDetails] RSS related data if it is a blog or rss email.
        #
        # @param send_on_publish [Boolean] Determines whether the email will be sent immediately on publish.
        #
        # @param state [Symbol, HubspotSDK::Models::Marketing::EmailCreateRequest::State] The email state.
        #
        # @param subcategory [Symbol, HubspotSDK::Models::Marketing::EmailCreateRequest::Subcategory] The email subcategory.
        #
        # @param subject [String] The subject of the email.
        #
        # @param subscription_details [HubspotSDK::Models::Marketing::PublicEmailSubscriptionDetails] Data structure representing the subscription fields of the email.
        #
        # @param testing [HubspotSDK::Models::Marketing::PublicEmailTestingDetails] AB testing related data. This property is only returned for AB type emails.
        #
        # @param to [HubspotSDK::Models::Marketing::PublicEmailToDetails] Data structure representing the to fields of the email.
        #
        # @param webversion [HubspotSDK::Models::Marketing::PublicWebversionDetails]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailCreateParams
        def create(params)
          parsed, options = HubspotSDK::Marketing::EmailCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v3/emails/",
            body: parsed,
            model: HubspotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EmailUpdateParams} for more details.
        #
        # Change properties of a marketing email.
        #
        # @overload update(email_id, body_archived: nil, active_domain: nil, business_unit_id: nil, campaign: nil, content: nil, folder_id_v2: nil, from: nil, jitter_send_time: nil, language: nil, name: nil, publish_date: nil, rss_data: nil, send_on_publish: nil, state: nil, subcategory: nil, subject: nil, subscription_details: nil, testing: nil, to: nil, webversion: nil, request_options: {})
        #
        # @param email_id [String] Path param: The ID of the marketing email that should get updated
        #
        # @param body_archived [Boolean] Body param: Determines if the email is archived or not.
        #
        # @param active_domain [String] Body param: The active domain of the email.
        #
        # @param business_unit_id [Integer] Body param:
        #
        # @param campaign [String] Body param: The ID of the campaign this email is associated to.
        #
        # @param content [HubspotSDK::Models::Marketing::PublicEmailContent] Body param: Data structure representing the content of the email.
        #
        # @param folder_id_v2 [Integer] Body param:
        #
        # @param from [HubspotSDK::Models::Marketing::PublicEmailFromDetails] Body param: Data structure representing the from fields on the email.
        #
        # @param jitter_send_time [Boolean] Body param:
        #
        # @param language [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::Language] Body param:
        #
        # @param name [String] Body param: The name of the email, as displayed on the email dashboard.
        #
        # @param publish_date [Time] Body param: The date and time the email is scheduled for, in ISO8601 representat
        #
        # @param rss_data [HubspotSDK::Models::Marketing::PublicRssEmailDetails] Body param: RSS related data if it is a blog or rss email.
        #
        # @param send_on_publish [Boolean] Body param: Determines whether the email will be sent immediately on publish.
        #
        # @param state [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::State] Body param: The email state.
        #
        # @param subcategory [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::Subcategory] Body param: The email subcategory.
        #
        # @param subject [String] Body param: The subject of the email.
        #
        # @param subscription_details [HubspotSDK::Models::Marketing::PublicEmailSubscriptionDetails] Body param: Data structure representing the subscription fields of the email.
        #
        # @param testing [HubspotSDK::Models::Marketing::PublicEmailTestingDetails] Body param: AB testing related data. This property is only returned for AB type
        #
        # @param to [HubspotSDK::Models::Marketing::PublicEmailToDetails] Body param: Data structure representing the to fields of the email.
        #
        # @param webversion [HubspotSDK::Models::Marketing::PublicWebversionDetails] Body param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailUpdateParams
        def update(email_id, params = {})
          parsed, options = HubspotSDK::Marketing::EmailUpdateParams.dump_request(params)
          query_params = [:query_archived]
          @client.request(
            method: :patch,
            path: ["marketing/v3/emails/%1$s", email_id],
            query: parsed.slice(*query_params).transform_keys(query_archived: "archived"),
            body: parsed.except(*query_params),
            model: HubspotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EmailListParams} for more details.
        #
        # The results can be filtered, allowing you to find a specific set of emails. See
        # the table below for a full list of filtering options.
        #
        # @overload list(after: nil, archived: nil, campaign: nil, created_after: nil, created_at: nil, created_before: nil, included_properties: nil, include_stats: nil, is_published: nil, limit: nil, marketing_campaign_names: nil, sort: nil, type: nil, updated_after: nil, updated_at: nil, updated_before: nil, workflow_names: nil, request_options: {})
        #
        # @param after [String] The cursor token value to get the next set of results. You can get this from the
        #
        # @param archived [Boolean] Specifies whether to return archived emails. Defaults to `false`.
        #
        # @param campaign [String] Filter by campaign GUID. All emails will be returned if not present.
        #
        # @param created_after [Time] Only return emails created after the specified time.
        #
        # @param created_at [Time] Only return emails created at exactly the specified time.
        #
        # @param created_before [Time] Only return emails created before the specified time.
        #
        # @param included_properties [Array<String>] Limit the response to only include this specified list of properties.
        #
        # @param include_stats [Boolean] Include statistics with emails.
        #
        # @param is_published [Boolean] Filter by published/draft emails. All emails will be returned if not present.
        #
        # @param limit [Integer] The maximum number of results to return. Default is 10.
        #
        # @param marketing_campaign_names [Boolean] Include the names for any associated marketing campaigns.
        #
        # @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
        #
        # @param type [Symbol, HubspotSDK::Models::Marketing::EmailListParams::Type] Email types to be filtered by. Multiple types can be included. All emails will b
        #
        # @param updated_after [Time] Only return emails last updated after the specified time.
        #
        # @param updated_at [Time] Only return emails last updated at exactly the specified time.
        #
        # @param updated_before [Time] Only return emails last updated before the specified time.
        #
        # @param workflow_names [Boolean] Include the names of any workflows associated with the returned emails.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::PublicEmail>]
        #
        # @see HubspotSDK::Models::Marketing::EmailListParams
        def list(params = {})
          parsed, options = HubspotSDK::Marketing::EmailListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "marketing/v3/emails/",
            query: parsed.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              included_properties: "includedProperties",
              include_stats: "includeStats",
              is_published: "isPublished",
              marketing_campaign_names: "marketingCampaignNames",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore",
              workflow_names: "workflowNames"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Delete a marketing email by its ID
        #
        # @overload delete(email_id, archived: nil, request_options: {})
        #
        # @param email_id [String] The ID of the marketing email to delete.
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EmailDeleteParams
        def delete(email_id, params = {})
          parsed, options = HubspotSDK::Marketing::EmailDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["marketing/v3/emails/%1$s", email_id],
            query: parsed,
            model: NilClass,
            options: options
          )
        end

        # This will create a duplicate email with the same properties as the original,
        # with the exception of a unique ID.
        #
        # @overload clone_(id:, clone_name: nil, language: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the email to be cloned.
        #
        # @param clone_name [String] The name to assign to the cloned email.
        #
        # @param language [String] The language code for the cloned email, such as 'en' for English.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailCloneParams
        def clone_(params)
          parsed, options = HubspotSDK::Marketing::EmailCloneParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v3/emails/clone",
            body: parsed,
            model: HubspotSDK::Marketing::PublicEmail,
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailCreateAbTestVariationParams
        def create_ab_test_variation(params)
          parsed, options = HubspotSDK::Marketing::EmailCreateAbTestVariationParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v3/emails/ab-test/create-variation",
            body: parsed,
            model: HubspotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EmailGetParams} for more details.
        #
        # Get the details for a marketing email.
        #
        # @overload get(email_id, archived: nil, included_properties: nil, include_stats: nil, marketing_campaign_names: nil, workflow_names: nil, request_options: {})
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param included_properties [Array<String>] Limit the response to only include the specified properties.
        #
        # @param include_stats [Boolean] Include statistics with email.
        #
        # @param marketing_campaign_names [Boolean] If set to true, loads `campaignName` and `campaignUtm`.
        #
        # @param workflow_names [Boolean] If set to true, loads workflows in which the email is used within a "send email"
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailGetParams
        def get(email_id, params = {})
          parsed, options = HubspotSDK::Marketing::EmailGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["marketing/v3/emails/%1$s", email_id],
            query: parsed.transform_keys(
              included_properties: "includedProperties",
              include_stats: "includeStats",
              marketing_campaign_names: "marketingCampaignNames",
              workflow_names: "workflowNames"
            ),
            model: HubspotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # This endpoint lets you obtain the variation of an A/B marketing email. If the
        # email is variation A (master) it will return variation B (variant) and vice
        # versa.
        #
        # @overload get_ab_test_variation(email_id, request_options: {})
        #
        # @param email_id [String] The ID of an A/B marketing email.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailGetAbTestVariationParams
        def get_ab_test_variation(email_id, params = {})
          @client.request(
            method: :get,
            path: ["marketing/v3/emails/%1$s/ab-test/get-variation", email_id],
            model: HubspotSDK::Marketing::PublicEmail,
            options: params[:request_options]
          )
        end

        # Get the draft version of an email (if it exists). If no draft version exists,
        # the published email is returned.
        #
        # @overload get_draft(email_id, request_options: {})
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailGetDraftParams
        def get_draft(email_id, params = {})
          @client.request(
            method: :get,
            path: ["marketing/v3/emails/%1$s/draft", email_id],
            model: HubspotSDK::Marketing::PublicEmail,
            options: params[:request_options]
          )
        end

        # Get a specific revision of a marketing email.
        #
        # @overload get_revision(revision_id, email_id:, request_options: {})
        #
        # @param revision_id [String] The ID of a revision.
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::VersionPublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailGetRevisionParams
        def get_revision(revision_id, params)
          parsed, options = HubspotSDK::Marketing::EmailGetRevisionParams.dump_request(params)
          email_id =
            parsed.delete(:email_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["marketing/v3/emails/%1$s/revisions/%2$s", email_id, revision_id],
            model: HubspotSDK::Marketing::VersionPublicEmail,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EmailListRevisionsParams} for more details.
        #
        # Get a list of all versions of a marketing email, with each entry including the
        # full state of that particular version. To view the most recent version, sort by
        # the updatedAt parameter.
        #
        # @overload list_revisions(email_id, after: nil, before: nil, limit: nil, request_options: {})
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param after [String] The cursor token value to get the next set of results. You can get this from the
        #
        # @param before [String] The cursor token value to get the previous set of results. You can get this from
        #
        # @param limit [Integer] The maximum number of results to return. Default is 10.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::VersionPublicEmail>]
        #
        # @see HubspotSDK::Models::Marketing::EmailListRevisionsParams
        def list_revisions(email_id, params = {})
          parsed, options = HubspotSDK::Marketing::EmailListRevisionsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["marketing/v3/emails/%1$s/revisions", email_id],
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Marketing::VersionPublicEmail,
            options: options
          )
        end

        # If you have a Marketing Hub Enterprise account or the transactional email
        # add-on, you can use this endpoint to publish an automated email or send/schedule
        # a regular email.
        #
        # @overload publish(email_id, request_options: {})
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EmailPublishParams
        def publish(email_id, params = {})
          @client.request(
            method: :post,
            path: ["marketing/v3/emails/%1$s/publish", email_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Resets the draft back to a copy of the live object.
        #
        # @overload reset_draft(email_id, request_options: {})
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EmailResetDraftParams
        def reset_draft(email_id, params = {})
          @client.request(
            method: :post,
            path: ["marketing/v3/emails/%1$s/draft/reset", email_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Restores a previous revision of a marketing email. The current revision becomes
        # old, and the restored revision is given a new version number.
        #
        # @overload restore_revision(revision_id, email_id:, request_options: {})
        #
        # @param revision_id [String] The ID of a revision.
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EmailRestoreRevisionParams
        def restore_revision(revision_id, params)
          parsed, options = HubspotSDK::Marketing::EmailRestoreRevisionParams.dump_request(params)
          email_id =
            parsed.delete(:email_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["marketing/v3/emails/%1$s/revisions/%2$s/restore", email_id, revision_id],
            model: NilClass,
            options: options
          )
        end

        # Restores a previous revision of a marketing email to DRAFT state. If there is
        # currently something in the draft for that object, it is overwritten.
        #
        # @overload restore_revision_to_draft(revision_id, email_id:, request_options: {})
        #
        # @param revision_id [Integer] The ID of a revision.
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailRestoreRevisionToDraftParams
        def restore_revision_to_draft(revision_id, params)
          parsed, options = HubspotSDK::Marketing::EmailRestoreRevisionToDraftParams.dump_request(params)
          email_id =
            parsed.delete(:email_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["marketing/v3/emails/%1$s/revisions/%2$s/restore-to-draft", email_id, revision_id],
            model: HubspotSDK::Marketing::PublicEmail,
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
        # @param email_id [String] The ID of the email to unpublish.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EmailUnpublishParams
        def unpublish(email_id, params = {})
          @client.request(
            method: :post,
            path: ["marketing/v3/emails/%1$s/unpublish", email_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EmailUpdateDraftParams} for more details.
        #
        # Create or update the draft version of a marketing email. If no draft exists, the
        # system creates a draft from the current “live” email then applies the request
        # body to that draft. The draft version only lives on the buffer—the email is not
        # cloned.
        #
        # @overload update_draft(email_id, active_domain: nil, archived: nil, business_unit_id: nil, campaign: nil, content: nil, folder_id_v2: nil, from: nil, jitter_send_time: nil, language: nil, name: nil, publish_date: nil, rss_data: nil, send_on_publish: nil, state: nil, subcategory: nil, subject: nil, subscription_details: nil, testing: nil, to: nil, webversion: nil, request_options: {})
        #
        # @param email_id [String] The marketing email ID.
        #
        # @param active_domain [String] The active domain of the email.
        #
        # @param archived [Boolean] Determines if the email is archived or not.
        #
        # @param business_unit_id [Integer]
        #
        # @param campaign [String] The ID of the campaign this email is associated to.
        #
        # @param content [HubspotSDK::Models::Marketing::PublicEmailContent] Data structure representing the content of the email.
        #
        # @param folder_id_v2 [Integer]
        #
        # @param from [HubspotSDK::Models::Marketing::PublicEmailFromDetails] Data structure representing the from fields on the email.
        #
        # @param jitter_send_time [Boolean]
        #
        # @param language [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::Language]
        #
        # @param name [String] The name of the email, as displayed on the email dashboard.
        #
        # @param publish_date [Time] The date and time the email is scheduled for, in ISO8601 representation. This is
        #
        # @param rss_data [HubspotSDK::Models::Marketing::PublicRssEmailDetails] RSS related data if it is a blog or rss email.
        #
        # @param send_on_publish [Boolean] Determines whether the email will be sent immediately on publish.
        #
        # @param state [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::State] The email state.
        #
        # @param subcategory [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::Subcategory] The email subcategory.
        #
        # @param subject [String] The subject of the email.
        #
        # @param subscription_details [HubspotSDK::Models::Marketing::PublicEmailSubscriptionDetails] Data structure representing the subscription fields of the email.
        #
        # @param testing [HubspotSDK::Models::Marketing::PublicEmailTestingDetails] AB testing related data. This property is only returned for AB type emails.
        #
        # @param to [HubspotSDK::Models::Marketing::PublicEmailToDetails] Data structure representing the to fields of the email.
        #
        # @param webversion [HubspotSDK::Models::Marketing::PublicWebversionDetails]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicEmail]
        #
        # @see HubspotSDK::Models::Marketing::EmailUpdateDraftParams
        def update_draft(email_id, params = {})
          parsed, options = HubspotSDK::Marketing::EmailUpdateDraftParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["marketing/v3/emails/%1$s/draft", email_id],
            body: parsed,
            model: HubspotSDK::Marketing::PublicEmail,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @statistics = HubspotSDK::Resources::Marketing::Emails::Statistics.new(client: client)
        end
      end
    end
  end
end
