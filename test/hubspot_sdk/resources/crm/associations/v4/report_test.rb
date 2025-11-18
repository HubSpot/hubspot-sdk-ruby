# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Associations::V4::ReportTest < HubspotSDK::Test::ResourceTest
  def test_request_high_usage_report
    skip("Prism tests are disabled")

    response = @hubspot.crm.associations.v4.report.request_high_usage_report(0)

    assert_pattern do
      response => HubspotSDK::Crm::Associations::ReportCreationResponse
    end

    assert_pattern do
      response => {
        enqueue_time: HubspotSDK::Crm::Associations::DateTime,
        user_email: String,
        user_id: Integer
      }
    end
  end
end
