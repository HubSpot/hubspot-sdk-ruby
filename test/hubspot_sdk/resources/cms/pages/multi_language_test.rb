# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Pages::MultiLanguageTest < HubspotSDK::Test::ResourceTest
  def test_attach_to_lang_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.multi_language.attach_to_lang_group(id: "id", language: :aa, primary_id: "primaryId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_language_variation_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.multi_language.create_language_variation(id: "id")

    assert_pattern do
      response => HubspotSDK::Cms::CmsPage
    end

    assert_pattern do
      response => {
        id: String,
        ab_status: HubspotSDK::Cms::CmsPage::AbStatus,
        ab_test_id: String,
        archived_at: Time,
        archived_in_dashboard: HubspotSDK::Internal::Type::Boolean,
        attached_stylesheets: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]]),
        author_name: String,
        campaign: String,
        category_id: Integer,
        content_group_id: String,
        content_type_category: HubspotSDK::Cms::CmsPage::ContentTypeCategory,
        created: Time,
        created_by_id: String,
        currently_published: HubspotSDK::Internal::Type::Boolean,
        current_state: HubspotSDK::Cms::CmsPage::CurrentState,
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
        language: HubspotSDK::Cms::CmsPage::Language,
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

  def test_detach_from_lang_group_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.multi_language.detach_from_lang_group(id: "id")

    assert_pattern do
      response => StringIO
    end
  end

  def test_set_new_lang_primary_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.pages.multi_language.set_new_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_languages_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.pages.multi_language.update_languages(languages: {foo: :aa}, primary_id: "primaryId")

    assert_pattern do
      response => StringIO
    end
  end
end
