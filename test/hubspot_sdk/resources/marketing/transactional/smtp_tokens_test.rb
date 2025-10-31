# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Transactional::SmtpTokensTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.transactional.smtp_tokens.create(
        campaign_name: "campaignName",
        create_contact: true
      )

    assert_pattern do
      response => HubspotSDK::Marketing::SmtpAPITokenView
    end

    assert_pattern do
      response => {
        id: String,
        campaign_name: String,
        create_contact: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        created_by: String,
        email_campaign_id: String,
        password: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.transactional.smtp_tokens.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Marketing::SmtpAPITokenView
    end

    assert_pattern do
      row => {
        id: String,
        campaign_name: String,
        create_contact: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        created_by: String,
        email_campaign_id: String,
        password: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.transactional.smtp_tokens.delete("tokenId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.transactional.smtp_tokens.get("tokenId")

    assert_pattern do
      response => HubspotSDK::Marketing::SmtpAPITokenView
    end

    assert_pattern do
      response => {
        id: String,
        campaign_name: String,
        create_contact: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        created_by: String,
        email_campaign_id: String,
        password: String | nil
      }
    end
  end

  def test_reset_password
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.transactional.smtp_tokens.reset_password("tokenId")

    assert_pattern do
      response => HubspotSDK::Marketing::SmtpAPITokenView
    end

    assert_pattern do
      response => {
        id: String,
        campaign_name: String,
        create_contact: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        created_by: String,
        email_campaign_id: String,
        password: String | nil
      }
    end
  end
end
