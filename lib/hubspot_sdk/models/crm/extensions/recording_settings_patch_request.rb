# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class RecordingSettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute url_to_retrieve_authed_recording
          #
          #   @return [String, nil]
          optional :url_to_retrieve_authed_recording, String, api_name: :urlToRetrieveAuthedRecording

          # @!method initialize(url_to_retrieve_authed_recording: nil)
          #   @param url_to_retrieve_authed_recording [String]
        end
      end
    end
  end
end
