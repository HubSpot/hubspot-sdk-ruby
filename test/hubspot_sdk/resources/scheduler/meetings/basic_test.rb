# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Scheduler::Meetings::BasicTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.scheduler.meetings.basic.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Scheduler::ExternalLinkMetadata
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        default_link: HubspotSDK::Internal::Type::Boolean,
        link: String,
        organizer_user_id: String,
        slug: String,
        type: HubspotSDK::Scheduler::ExternalLinkMetadata::Type,
        user_ids_of_link_members: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_availability_by_slug_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.scheduler.meetings.basic.get_availability_by_slug("slug", timezone: "timezone")

    assert_pattern do
      response => HubspotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes
    end

    assert_pattern do
      response => {
        all_users_busy_times: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalUserBusyTimes]),
        link_availability: HubspotSDK::Scheduler::ExternalLinkAvailability | nil
      }
    end
  end

  def test_get_booking_info_by_slug_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.scheduler.meetings.basic.get_booking_info_by_slug("slug", timezone: "timezone")

    assert_pattern do
      response => HubspotSDK::Scheduler::ExternalBookingInfo
    end

    assert_pattern do
      response => {
        all_users_busy_times: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalUserBusyTimes]),
        custom_params: HubspotSDK::Scheduler::ExternalMeetingsLinkSettings,
        is_offline: HubspotSDK::Internal::Type::Boolean,
        link_id: String,
        link_type: HubspotSDK::Scheduler::ExternalBookingInfo::LinkType,
        branding_metadata: HubspotSDK::Scheduler::ExternalBrandingMetadata | nil,
        link_availability: HubspotSDK::Scheduler::ExternalLinkAvailability | nil
      }
    end
  end
end
