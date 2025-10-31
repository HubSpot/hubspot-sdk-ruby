# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Account::DetailsTest < HubspotSDK::Test::ResourceTest
  def test_get
    skip("Prism tests are disabled")

    response = @hub_spot.account.details.get

    assert_pattern do
      response => HubspotSDK::Account::PortalInformationResponse
    end

    assert_pattern do
      response => {
        account_type: HubspotSDK::Account::PortalInformationResponse::AccountType,
        additional_currencies: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        company_currency: String,
        data_hosting_location: String,
        portal_id: Integer,
        time_zone: String,
        ui_domain: String,
        utc_offset: String,
        utc_offset_milliseconds: Integer
      }
    end
  end
end
