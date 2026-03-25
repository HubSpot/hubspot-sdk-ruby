# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::SettingsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

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
        listing_page_id: String,
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

  def test_get
    skip("Mock server tests are disabled")

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
        listing_page_id: String,
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
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.settings.get_revision("revisionId", blog_id: "blogId")

    assert_pattern do
      response => HubspotSDK::Cms::Blogs::BlogVersion
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
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.settings.list_revisions("blogId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::Blogs::VersionBlog
    end

    assert_pattern do
      row => {
        id: String,
        object: HubspotSDK::Cms::Blogs::Blog,
        updated_at: Time,
        user: HubspotSDK::VersionUser
      }
    end
  end
end
