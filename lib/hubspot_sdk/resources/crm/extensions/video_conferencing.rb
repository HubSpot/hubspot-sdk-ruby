# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class VideoConferencing
          # Create or update video conference extension settings for your app
          #
          # @overload update(app_id, create_meeting_url:, delete_meeting_url: nil, fetch_accounts_uri: nil, update_meeting_url: nil, user_verify_url: nil, request_options: {})
          #
          # @param app_id [Integer]
          # @param create_meeting_url [String]
          # @param delete_meeting_url [String]
          # @param fetch_accounts_uri [String]
          # @param update_meeting_url [String]
          # @param user_verify_url [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::ExternalSettings]
          #
          # @see HubspotSDK::Models::Crm::Extensions::VideoConferencingUpdateParams
          def update(app_id, params)
            parsed, options = HubspotSDK::Crm::Extensions::VideoConferencingUpdateParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["crm/extensions/videoconferencing/2026-03/settings/%1$s", app_id],
              body: parsed,
              model: HubspotSDK::Crm::Extensions::ExternalSettings,
              options: options
            )
          end

          # Delete video conference extension settings for your app
          #
          # @overload delete(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Extensions::VideoConferencingDeleteParams
          def delete(app_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/extensions/videoconferencing/2026-03/settings/%1$s", app_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Fetch video conference extension settings for your app
          #
          # @overload get(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::ExternalSettings]
          #
          # @see HubspotSDK::Models::Crm::Extensions::VideoConferencingGetParams
          def get(app_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/extensions/videoconferencing/2026-03/settings/%1$s", app_id],
              model: HubspotSDK::Crm::Extensions::ExternalSettings,
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
