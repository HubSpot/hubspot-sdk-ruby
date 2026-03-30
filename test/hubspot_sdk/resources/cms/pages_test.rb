# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::PagesTest < HubspotSDK::Test::ResourceTest
  def test_get_revision_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.get_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::PageVersion
    end

    assert_pattern do
      response => {
        id: String,
        object: HubspotSDK::Cms::Page,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_list_landing_page_folders
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.list_landing_page_folders

    assert_pattern do
      response => HubspotSDK::Internal::Type::Unknown
    end
  end

  def test_list_landing_pages
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.list_landing_pages

    assert_pattern do
      response => HubspotSDK::Internal::Type::Unknown
    end
  end

  def test_list_revisions
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.list_revisions("objectId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::PageVersion
    end

    assert_pattern do
      row => {
        id: String,
        object: HubspotSDK::Cms::Page,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_list_site_pages
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.list_site_pages

    assert_pattern do
      response => HubspotSDK::Internal::Type::Unknown
    end
  end

  def test_query_landing_page_folders
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.query_landing_page_folders

    assert_pattern do
      response => HubspotSDK::Internal::Type::Unknown
    end
  end

  def test_query_landing_pages
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.query_landing_pages

    assert_pattern do
      response => HubspotSDK::Internal::Type::Unknown
    end
  end

  def test_query_site_pages
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.query_site_pages

    assert_pattern do
      response => HubspotSDK::Internal::Type::Unknown
    end
  end

  def test_reset_draft
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.reset_draft("objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_restore_revision_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.restore_revision("revisionId", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end

  def test_restore_revision_to_draft_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.restore_revision_to_draft(0, object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Cms::Page
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::Page::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::Page::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::Page::CurrentState,
        domain: String,
        dynamic_page_data_source_id: String,
        dynamic_page_data_source_type: Integer,
        dynamic_page_hub_db_table_id: String,
        enable_domain_stylesheets: HubspotSDK::Internal::Type::Boolean,
        enable_layout_stylesheets: HubspotSDK::Internal::Type::Boolean,
        featured_image: String,
        featured_image_alt_text: String,
        folder_id: String,
        footer_html: String,
        head_html: String,
        html_title: String,
        include_default_custom_css: HubspotSDK::Internal::Type::Boolean,
        language: HubspotSDK::Cms::Page::Language,
        layout_sections: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]),
        link_rel_canonical_url: String,
        mab_experiment_id: String,
        meta_description: String,
        name: String,
        page_expiry_date: Integer,
        page_expiry_enabled: HubspotSDK::Internal::Type::Boolean,
        page_expiry_redirect_id: Integer,
        page_expiry_redirect_url: String,
        page_redirected: HubspotSDK::Internal::Type::Boolean,
        password: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        publish_date: Time,
        publish_immediately: HubspotSDK::Internal::Type::Boolean,
        slug: String,
        state: String,
        subcategory: String,
        template_path: String,
        theme_settings_values: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        translated_from_id: String,
        translations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::ContentLanguageVariation]),
        updated: Time,
        updated_by_id: String,
        url: String,
        use_featured_image: HubspotSDK::Internal::Type::Boolean,
        widget_containers: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        widgets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown])
      }
    end
  end
end
