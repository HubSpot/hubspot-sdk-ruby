# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Settings::UsersTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.create(email: "email", send_welcome_email: true)

    assert_pattern do
      response => HubSpotSDK::Settings::PublicUser
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        role_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        super_admin: HubSpotSDK::Internal::Type::Boolean,
        first_name: String | nil,
        last_name: String | nil,
        primary_team_id: String | nil,
        role_id: String | nil,
        secondary_team_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        send_welcome_email: HubSpotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.update("userId")

    assert_pattern do
      response => HubSpotSDK::Settings::PublicUser
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        role_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        super_admin: HubSpotSDK::Internal::Type::Boolean,
        first_name: String | nil,
        last_name: String | nil,
        primary_team_id: String | nil,
        role_id: String | nil,
        secondary_team_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        send_welcome_email: HubSpotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Settings::PublicUser
    end

    assert_pattern do
      row => {
        id: String,
        email: String,
        role_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        super_admin: HubSpotSDK::Internal::Type::Boolean,
        first_name: String | nil,
        last_name: String | nil,
        primary_team_id: String | nil,
        role_id: String | nil,
        secondary_team_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        send_welcome_email: HubSpotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.delete("userId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.get("userId")

    assert_pattern do
      response => HubSpotSDK::Settings::PublicUser
    end

    assert_pattern do
      response => {
        id: String,
        email: String,
        role_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        super_admin: HubSpotSDK::Internal::Type::Boolean,
        first_name: String | nil,
        last_name: String | nil,
        primary_team_id: String | nil,
        role_id: String | nil,
        secondary_team_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        send_welcome_email: HubSpotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list_roles
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.list_roles

    assert_pattern do
      response => HubSpotSDK::Settings::CollectionResponsePublicPermissionSetNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::PublicPermissionSet])
      }
    end
  end

  def test_list_teams
    skip("Mock server tests are disabled")

    response = @hubspot.settings.users.list_teams

    assert_pattern do
      response => HubSpotSDK::Settings::CollectionResponsePublicTeamNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::PublicTeam])
      }
    end
  end
end
