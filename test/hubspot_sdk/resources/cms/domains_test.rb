# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::DomainsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.domains.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::Domain
    end

    assert_pattern do
      row => {
        id: String,
        domain: String,
        is_resolving: HubspotSDK::Internal::Type::Boolean,
        is_used_for_blog_post: HubspotSDK::Internal::Type::Boolean,
        is_used_for_email: HubspotSDK::Internal::Type::Boolean,
        is_used_for_knowledge: HubspotSDK::Internal::Type::Boolean,
        is_used_for_landing_page: HubspotSDK::Internal::Type::Boolean,
        is_used_for_site_page: HubspotSDK::Internal::Type::Boolean,
        correct_cname: String | nil,
        created: Time | nil,
        is_ssl_enabled: HubspotSDK::Internal::Type::Boolean | nil,
        is_ssl_only: HubspotSDK::Internal::Type::Boolean | nil,
        manually_marked_as_resolving: HubspotSDK::Internal::Type::Boolean | nil,
        primary_blog_post: HubspotSDK::Internal::Type::Boolean | nil,
        primary_email: HubspotSDK::Internal::Type::Boolean | nil,
        primary_knowledge: HubspotSDK::Internal::Type::Boolean | nil,
        primary_landing_page: HubspotSDK::Internal::Type::Boolean | nil,
        primary_site_page: HubspotSDK::Internal::Type::Boolean | nil,
        secondary_to_domain: String | nil,
        updated: Time | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.cms.domains.get("domainId")

    assert_pattern do
      response => HubspotSDK::Cms::Domain
    end

    assert_pattern do
      response => {
        id: String,
        domain: String,
        is_resolving: HubspotSDK::Internal::Type::Boolean,
        is_used_for_blog_post: HubspotSDK::Internal::Type::Boolean,
        is_used_for_email: HubspotSDK::Internal::Type::Boolean,
        is_used_for_knowledge: HubspotSDK::Internal::Type::Boolean,
        is_used_for_landing_page: HubspotSDK::Internal::Type::Boolean,
        is_used_for_site_page: HubspotSDK::Internal::Type::Boolean,
        correct_cname: String | nil,
        created: Time | nil,
        is_ssl_enabled: HubspotSDK::Internal::Type::Boolean | nil,
        is_ssl_only: HubspotSDK::Internal::Type::Boolean | nil,
        manually_marked_as_resolving: HubspotSDK::Internal::Type::Boolean | nil,
        primary_blog_post: HubspotSDK::Internal::Type::Boolean | nil,
        primary_email: HubspotSDK::Internal::Type::Boolean | nil,
        primary_knowledge: HubspotSDK::Internal::Type::Boolean | nil,
        primary_landing_page: HubspotSDK::Internal::Type::Boolean | nil,
        primary_site_page: HubspotSDK::Internal::Type::Boolean | nil,
        secondary_to_domain: String | nil,
        updated: Time | nil
      }
    end
  end
end
