# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::CRM::ExportsTest < HubspotSDK::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @hub_spot.crm.exports.create

    assert_pattern do
      response => HubspotSDK::TaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_get_status
    skip("Prism tests are disabled")

    response = @hub_spot.crm.exports.get_status(0)

    assert_pattern do
      response => HubspotSDK::CRM::ActionResponseWithSingleResultUri
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubspotSDK::CRM::ActionResponseWithSingleResultUri::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil,
        result: String | nil
      }
    end
  end
end
