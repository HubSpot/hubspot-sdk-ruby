# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Cms::DomainsTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.domains.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Cms::Domain
    end

    assert_pattern do
      row => {
        id: String,
        correct_cname: String,
        created: Time,
        domain: String,
        is_resolving: HubSpotSDK::Internal::Type::Boolean,
        is_ssl_enabled: HubSpotSDK::Internal::Type::Boolean,
        is_ssl_only: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_blog_post: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_email: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_knowledge: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_landing_page: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_site_page: HubSpotSDK::Internal::Type::Boolean,
        manually_marked_as_resolving: HubSpotSDK::Internal::Type::Boolean,
        primary_blog_post: HubSpotSDK::Internal::Type::Boolean,
        primary_email: HubSpotSDK::Internal::Type::Boolean,
        primary_knowledge: HubSpotSDK::Internal::Type::Boolean,
        primary_landing_page: HubSpotSDK::Internal::Type::Boolean,
        primary_site_page: HubSpotSDK::Internal::Type::Boolean,
        secondary_to_domain: String,
        updated: Time
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.cms.domains.get("domainId")

    assert_pattern do
      response => HubSpotSDK::Cms::Domain
    end

    assert_pattern do
      response => {
        id: String,
        correct_cname: String,
        created: Time,
        domain: String,
        is_resolving: HubSpotSDK::Internal::Type::Boolean,
        is_ssl_enabled: HubSpotSDK::Internal::Type::Boolean,
        is_ssl_only: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_blog_post: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_email: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_knowledge: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_landing_page: HubSpotSDK::Internal::Type::Boolean,
        is_used_for_site_page: HubSpotSDK::Internal::Type::Boolean,
        manually_marked_as_resolving: HubSpotSDK::Internal::Type::Boolean,
        primary_blog_post: HubSpotSDK::Internal::Type::Boolean,
        primary_email: HubSpotSDK::Internal::Type::Boolean,
        primary_knowledge: HubSpotSDK::Internal::Type::Boolean,
        primary_landing_page: HubSpotSDK::Internal::Type::Boolean,
        primary_site_page: HubSpotSDK::Internal::Type::Boolean,
        secondary_to_domain: String,
        updated: Time
      }
    end
  end
end
