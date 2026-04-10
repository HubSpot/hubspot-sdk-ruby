# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::OwnersTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.owners.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Crm::PublicOwner
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        type: HubSpotSDK::Crm::PublicOwner::Type,
        updated_at: Time,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        teams: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicTeam]) | nil,
        user_id: Integer | nil,
        user_id_including_inactive: Integer | nil
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.owners.get(0)

    assert_pattern do
      response => HubSpotSDK::Crm::PublicOwner
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        type: HubSpotSDK::Crm::PublicOwner::Type,
        updated_at: Time,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        teams: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicTeam]) | nil,
        user_id: Integer | nil,
        user_id_including_inactive: Integer | nil
      }
    end
  end
end
