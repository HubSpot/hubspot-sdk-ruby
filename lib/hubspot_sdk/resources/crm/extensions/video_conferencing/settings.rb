# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class VideoConferencing
          class Settings
            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::CRM::Extensions::VideoConferencing::SettingUpdateParams}
            # for more details.
            #
            # @overload update(app_id, create_meeting_url:, delete_meeting_url: nil, fetch_accounts_uri: nil, update_meeting_url: nil, user_verify_url: nil, request_options: {})
            #
            # @param app_id [Integer]
            #
            # @param create_meeting_url [String] The URL that HubSpot will send requests to create a new video conference.
            #
            # @param delete_meeting_url [String] The URL that HubSpot will send notifications of meetings that have been deleted
            #
            # @param fetch_accounts_uri [String]
            #
            # @param update_meeting_url [String] The URL that HubSpot will send updates to existing meetings. Typically called wh
            #
            # @param user_verify_url [String] The URL that HubSpot will use to verify that a user exists in the video conferen
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::ExternalSettings]
            #
            # @see HubspotSDK::Models::CRM::Extensions::VideoConferencing::SettingUpdateParams
            def update(app_id, params)
              parsed, options =
                HubspotSDK::CRM::Extensions::VideoConferencing::SettingUpdateParams.dump_request(params)
              @client.request(
                method: :put,
                path: ["crm/v3/extensions/videoconferencing/settings/%1$s", app_id],
                body: parsed,
                model: HubspotSDK::CRM::Extensions::ExternalSettings,
                options: options
              )
            end

            # @overload delete(app_id, request_options: {})
            #
            # @param app_id [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::CRM::Extensions::VideoConferencing::SettingDeleteParams
            def delete(app_id, params = {})
              @client.request(
                method: :delete,
                path: ["crm/v3/extensions/videoconferencing/settings/%1$s", app_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # @overload get(app_id, request_options: {})
            #
            # @param app_id [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::ExternalSettings]
            #
            # @see HubspotSDK::Models::CRM::Extensions::VideoConferencing::SettingGetParams
            def get(app_id, params = {})
              @client.request(
                method: :get,
                path: ["crm/v3/extensions/videoconferencing/settings/%1$s", app_id],
                model: HubspotSDK::CRM::Extensions::ExternalSettings,
                options: params[:request_options]
              )
            end

            # @api private
            #
            # @param client [HubspotSDK::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
