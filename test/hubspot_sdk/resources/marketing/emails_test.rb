# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Marketing::EmailsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.create(name: "My subject")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.update("emailId")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      row => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.delete("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_clone__required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.clone_(id: "id")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_create_ab_test_variation_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.emails.create_ab_test_variation(
        content_id: "contentId",
        variation_name: "variationName"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.get("emailId")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_get_ab_test_variation
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.get_ab_test_variation("emailId")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_get_draft
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.get_draft("emailId")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_get_revision_required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.get_revision("revisionId", email_id: "emailId")

    assert_pattern do
      response => HubspotSDK::Marketing::VersionPublicEmail
    end

    assert_pattern do
      response => {
        id: String,
        object: HubspotSDK::Marketing::PublicEmail,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_list_revisions
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.list_revisions("emailId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Marketing::VersionPublicEmail
    end

    assert_pattern do
      row => {
        id: String,
        object: HubspotSDK::Marketing::PublicEmail,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_publish
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.publish("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_reset_draft
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.reset_draft("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_restore_revision_required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.restore_revision("revisionId", email_id: "emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_restore_revision_to_draft_required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.restore_revision_to_draft(0, email_id: "emailId")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_unpublish
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.unpublish("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_update_draft
    skip("Prism tests are disabled")

    response = @hubspot.marketing.emails.update_draft("emailId")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicEmail
    end

    assert_pattern do
      response => {
        is_ab: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active_domain: String | nil,
        all_email_campaign_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        business_unit_id: String | nil,
        campaign: String | nil,
        campaign_name: String | nil,
        campaign_utm: String | nil,
        cloned_from: String | nil,
        content: HubspotSDK::Marketing::PublicEmailContent | nil,
        created_at: Time | nil,
        created_by_id: String | nil,
        deleted_at: Time | nil,
        email_campaign_group_id: String | nil,
        email_template_mode: HubspotSDK::Marketing::PublicEmail::EmailTemplateMode | nil,
        feedback_survey_id: String | nil,
        folder_id: Integer | nil,
        folder_id_v2: Integer | nil,
        from: HubspotSDK::Marketing::PublicEmailFromDetails | nil,
        is_published: HubspotSDK::Internal::Type::Boolean | nil,
        is_transactional: HubspotSDK::Internal::Type::Boolean | nil,
        jitter_send_time: HubspotSDK::Internal::Type::Boolean | nil,
        language: HubspotSDK::Marketing::PublicEmail::Language | nil,
        name: String | nil,
        preview_key: String | nil,
        primary_email_campaign_id: String | nil,
        publish_date: Time | nil,
        published_at: Time | nil,
        published_by_email: String | nil,
        published_by_id: String | nil,
        published_by_name: String | nil,
        rss_data: HubspotSDK::Marketing::PublicRssEmailDetails | nil,
        send_on_publish: HubspotSDK::Internal::Type::Boolean | nil,
        state: HubspotSDK::Marketing::PublicEmail::State | nil,
        stats: HubspotSDK::Marketing::EmailStatisticsData | nil,
        subcategory: String | nil,
        subject: String | nil,
        subscription_details: HubspotSDK::Marketing::PublicEmailSubscriptionDetails | nil,
        teams_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        testing: HubspotSDK::Marketing::PublicEmailTestingDetails | nil,
        to: HubspotSDK::Marketing::PublicEmailToDetails | nil,
        type: HubspotSDK::Marketing::PublicEmail::Type | nil,
        unpublished_at: Time | nil,
        updated_at: Time | nil,
        updated_by_id: String | nil,
        users_with_access: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        webversion: HubspotSDK::Marketing::PublicWebversionDetails | nil,
        workflow_names: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
