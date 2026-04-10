# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubSpotSDK::Test::Resources::Cms::Blogs::Settings::MultiLanguageTest < HubSpotSDK::Test::ResourceTest
  def test_attach_to_lang_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.settings.multi_language.attach_to_lang_group(
        id: "id",
        language: :aa,
        primary_id: "primaryId"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_language_variation_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.settings.multi_language.create_language_variation(id: "id")

    assert_pattern do
      response => HubSpotSDK::Cms::Blogs::Blog
    end

    assert_pattern do
      response => {
        id: String,
        absolute_url: String,
        allow_comments: HubSpotSDK::Internal::Type::Boolean,
        created: Time,
        deleted_at: Time,
        description: String,
        html_title: String,
        language: HubSpotSDK::Cms::Blogs::Blog::Language,
        listing_page_id: String,
        name: String,
        public_access_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubSpotSDK::Internal::Type::Boolean,
        public_title: String,
        slug: String,
        translated_from_id: String,
        updated: Time
      }
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.settings.multi_language.detach_from_lang_group(id: "id")

    assert_pattern do
      response => StringIO
    end
  end

  def test_set_new_lang_primary_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.settings.multi_language.set_new_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_languages_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.settings.multi_language.update_languages(
        languages: {foo: :aa},
        primary_id: "primaryId"
      )

    assert_pattern do
      response => StringIO
    end
  end
end
