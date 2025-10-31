# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Associations::V4::ReportTest < HubspotSDK::Test::ResourceTest
  def test_get_high_usage_report
    skip("Prism tests are disabled")

    response = @hub_spot.crm.associations.v4.report.get_high_usage_report(0)

    assert_pattern do
      response => HubspotSDK::CRM::Associations::ReportCreationResponse
    end

    assert_pattern do
      response => {
        enqueue_time: HubspotSDK::CRM::Associations::DateTime,
        user_email: String,
        user_id: Integer
      }
    end
  end
end
