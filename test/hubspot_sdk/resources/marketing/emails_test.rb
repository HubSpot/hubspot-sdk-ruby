# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::EmailsTest < HubSpotSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.create

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.update("emailId")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      row => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.delete("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_clone__required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.clone_(id: "id")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_create_ab_test_variation_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.emails.create_ab_test_variation(
        content_id: "contentId",
        variation_name: "variationName"
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.get

    assert_pattern do
      response => HubSpotSDK::Marketing::AggregateEmailStatistics
    end

    assert_pattern do
      response => {
        aggregate: HubSpotSDK::Marketing::EmailStatisticsData,
        campaign_aggregations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Marketing::EmailStatisticsData]),
        emails: ^(HubSpotSDK::Internal::Type::ArrayOf[Integer])
      }
    end
  end

  def test_get_ab_test_variation
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.get_ab_test_variation("emailId")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_get_draft
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.get_draft("emailId")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_get_histogram
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.get_histogram

    assert_pattern do
      response => HubSpotSDK::Marketing::CollectionResponseWithTotalEmailStatisticInterval
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::EmailStatisticInterval]),
        total: Integer,
        paging: HubSpotSDK::Paging | nil
      }
    end
  end

  def test_get_revision_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.get_revision("revisionId", email_id: "emailId")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmailVersion
    end

    assert_pattern do
      response => {
        id: String,
        object: HubSpotSDK::Marketing::PublicEmail,
        updated_at: Time,
        user: HubSpotSDK::VersionUser
      }
    end
  end

  def test_list_revisions
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.list_revisions("emailId")

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Marketing::VersionPublicEmail
    end

    assert_pattern do
      row => {
        id: String,
        object: HubSpotSDK::Marketing::PublicEmail,
        updated_at: Time,
        user: HubSpotSDK::VersionUser
      }
    end
  end

  def test_publish
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.publish("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_reset_draft
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.reset_draft("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_restore_revision_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.restore_revision("revisionId", email_id: "emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_restore_revision_to_draft_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.restore_revision_to_draft(0, email_id: "emailId")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_unpublish
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.unpublish("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_update_draft
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.emails.update_draft("emailId")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubSpotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubSpotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubSpotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubSpotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubSpotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubSpotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubSpotSDK::Internal::Type::Boolean | nil,
        language: HubSpotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubSpotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubSpotSDK::Internal::Type::Boolean | nil,
        state: HubSpotSDK::Marketing::PublicEmail::State | nil,
        stats: HubSpotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubSpotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubSpotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubSpotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubSpotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubSpotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
