# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::SettingsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.settings.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::Blogs::Blog
    end

    assert_pattern do
      row => {
        id: String,
        absolute_url: String,
        allow_comments: HubspotSDK::Internal::Type::Boolean,
        created: Time,
        deleted_at: Time,
        description: String,
        html_title: String,
        language: HubspotSDK::Cms::Blogs::Blog::Language,
        name: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        public_title: String,
        slug: String,
        translated_from_id: String,
        updated: Time
      }
    end
  end

  def test_attach_to_lang_group_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.settings.attach_to_lang_group(
        id: "id",
        language: "language",
        primary_id: "primaryId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_create_language_variation_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.settings.create_language_variation(id: "id")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::Blog
    end

    assert_pattern do
      response => {
        id: String,
        absolute_url: String,
        allow_comments: HubspotSDK::Internal::Type::Boolean,
        created: Time,
        deleted_at: Time,
        description: String,
        html_title: String,
        language: HubspotSDK::Cms::Blogs::Blog::Language,
        name: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        public_title: String,
        slug: String,
        translated_from_id: String,
        updated: Time
      }
    end
  end

  def test_detach_from_lang_group_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.settings.detach_from_lang_group(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.settings.get("blogId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::Blog
    end

    assert_pattern do
      response => {
        id: String,
        absolute_url: String,
        allow_comments: HubspotSDK::Internal::Type::Boolean,
        created: Time,
        deleted_at: Time,
        description: String,
        html_title: String,
        language: HubspotSDK::Cms::Blogs::Blog::Language,
        name: String,
        public_access_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        public_access_rules_enabled: HubspotSDK::Internal::Type::Boolean,
        public_title: String,
        slug: String,
        translated_from_id: String,
        updated: Time
      }
    end
  end

  def test_get_revision_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.settings.get_revision("revisionId", blog_id: "blogId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::VersionBlog
    end

    assert_pattern do
      response => {
        id: String,
        object: HubspotSDK::Cms::Blogs::Blog,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end

  def test_list_revisions
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.settings.list_revisions("blogId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::CollectionResponseWithTotalVersionBlog
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::VersionBlog]),
        total: Integer,
        paging: HubspotSDK::Marketing::EmailsPaging | nil
      }
    end
  end

  def test_set_new_lang_primary_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.blogs.settings.set_new_lang_primary(id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_languages_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.blogs.settings.update_languages(languages: {foo: "string"}, primary_id: "primaryId")

    assert_pattern do
      response => nil
    end
  end
end
