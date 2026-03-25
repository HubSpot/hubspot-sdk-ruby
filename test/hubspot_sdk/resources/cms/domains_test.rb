# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::DomainsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

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
        correct_cname: String,
        created: Time,
        domain: String,
        is_resolving: HubspotSDK::Internal::Type::Boolean,
        is_ssl_enabled: HubspotSDK::Internal::Type::Boolean,
        is_ssl_only: HubspotSDK::Internal::Type::Boolean,
        is_used_for_blog_post: HubspotSDK::Internal::Type::Boolean,
        is_used_for_email: HubspotSDK::Internal::Type::Boolean,
        is_used_for_knowledge: HubspotSDK::Internal::Type::Boolean,
        is_used_for_landing_page: HubspotSDK::Internal::Type::Boolean,
        is_used_for_site_page: HubspotSDK::Internal::Type::Boolean,
        manually_marked_as_resolving: HubspotSDK::Internal::Type::Boolean,
        primary_blog_post: HubspotSDK::Internal::Type::Boolean,
        primary_email: HubspotSDK::Internal::Type::Boolean,
        primary_knowledge: HubspotSDK::Internal::Type::Boolean,
        primary_landing_page: HubspotSDK::Internal::Type::Boolean,
        primary_site_page: HubspotSDK::Internal::Type::Boolean,
        secondary_to_domain: String,
        updated: Time
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.domains.get("domainId")

    assert_pattern do
      response => HubspotSDK::Cms::Domain
    end

    assert_pattern do
      response => {
        id: String,
        correct_cname: String,
        created: Time,
        domain: String,
        is_resolving: HubspotSDK::Internal::Type::Boolean,
        is_ssl_enabled: HubspotSDK::Internal::Type::Boolean,
        is_ssl_only: HubspotSDK::Internal::Type::Boolean,
        is_used_for_blog_post: HubspotSDK::Internal::Type::Boolean,
        is_used_for_email: HubspotSDK::Internal::Type::Boolean,
        is_used_for_knowledge: HubspotSDK::Internal::Type::Boolean,
        is_used_for_landing_page: HubspotSDK::Internal::Type::Boolean,
        is_used_for_site_page: HubspotSDK::Internal::Type::Boolean,
        manually_marked_as_resolving: HubspotSDK::Internal::Type::Boolean,
        primary_blog_post: HubspotSDK::Internal::Type::Boolean,
        primary_email: HubspotSDK::Internal::Type::Boolean,
        primary_knowledge: HubspotSDK::Internal::Type::Boolean,
        primary_landing_page: HubspotSDK::Internal::Type::Boolean,
        primary_site_page: HubspotSDK::Internal::Type::Boolean,
        secondary_to_domain: String,
        updated: Time
      }
    end
  end
end
