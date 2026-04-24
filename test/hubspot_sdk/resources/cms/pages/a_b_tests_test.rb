# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Pages::AbTestsTest < HubSpotSDK::Test::ResourceTest
  def test_create_landing_page_variation_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.a_b_tests.create_landing_page_variation(
        content_id: "contentId",
        variation_name: "variationName"
      )

    assert_pattern do
      response => HubSpotSDK::Cms::PagesPage
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubSpotSDK::Cms::PagesPage::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PagesPage::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PagesPage::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PagesPage::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_create_site_page_variation_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.a_b_tests.create_site_page_variation(
        content_id: "contentId",
        variation_name: "variationName"
      )

    assert_pattern do
      response => HubSpotSDK::Cms::PagesPage
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubSpotSDK::Cms::PagesPage::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubSpotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubSpotSDK::Cms::PagesPage::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubSpotSDK::Internal::Type::Boolean,
        current_state: HubSpotSDK::Cms::PagesPage::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubSpotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubSpotSDK::Internal::Type::Boolean,
        language: HubSpotSDK::Cms::PagesPage::Language,
        layout_sections: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubSpotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubSpotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubSpotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubSpotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
        widgets: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_end_landing_page_test_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.a_b_tests.end_landing_page_test(ab_test_id: "abTestId", winner_id: "winnerId")

    assert_pattern do
      response => nil
    end
  end

  def test_end_site_page_test_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.a_b_tests.end_site_page_test(ab_test_id: "abTestId", winner_id: "winnerId")

    assert_pattern do
      response => nil
    end
  end

  def test_rerun_landing_page_test_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.a_b_tests.rerun_landing_page_test(
        ab_test_id: "abTestId",
        variation_id: "variationId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_rerun_site_page_test_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.a_b_tests.rerun_site_page_test(ab_test_id: "abTestId", variation_id: "variationId")

    assert_pattern do
      response => nil
    end
  end
end
