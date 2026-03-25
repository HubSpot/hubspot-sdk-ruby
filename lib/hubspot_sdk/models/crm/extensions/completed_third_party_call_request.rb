# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CompletedThirdPartyCallRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute create_engagement
          #
          #   @return [Boolean]
          required :create_engagement, HubspotSDK::Internal::Type::Boolean, api_name: :createEngagement

          # @!attribute engagement_properties
          #
          #   @return [Hash{Symbol=>String}]
          required :engagement_properties,
                   HubspotSDK::Internal::Type::HashOf[String],
                   api_name: :engagementProperties

          # @!attribute external_call_id
          #
          #   @return [String]
          required :external_call_id, String, api_name: :externalCallId

          # @!attribute final_call_status
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus]
          required :final_call_status,
                   enum: -> { HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus },
                   api_name: :finalCallStatus

          # @!attribute from_number
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
          required :from_number,
                   -> {
                     HubspotSDK::Crm::Extensions::FormattedPhoneNumber
                   },
                   api_name: :fromNumber

          # @!attribute potential_recipient_user_ids
          #
          #   @return [Array<Integer>]
          required :potential_recipient_user_ids,
                   HubspotSDK::Internal::Type::ArrayOf[Integer],
                   api_name: :potentialRecipientUserIds

          # @!attribute to_number
          #
          #   @return [HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
          required :to_number, -> { HubspotSDK::Crm::Extensions::FormattedPhoneNumber }, api_name: :toNumber

          # @!attribute call_started_timestamp
          #
          #   @return [Time, nil]
          optional :call_started_timestamp, Time, api_name: :callStartedTimestamp

          # @!attribute duration_seconds
          #
          #   @return [Integer, nil]
          optional :duration_seconds, Integer, api_name: :durationSeconds

          # @!attribute user_id
          #
          #   @return [Integer, nil]
          optional :user_id, Integer, api_name: :userId

          # @!method initialize(create_engagement:, engagement_properties:, external_call_id:, final_call_status:, from_number:, potential_recipient_user_ids:, to_number:, call_started_timestamp: nil, duration_seconds: nil, user_id: nil)
          #   @param create_engagement [Boolean]
          #   @param engagement_properties [Hash{Symbol=>String}]
          #   @param external_call_id [String]
          #   @param final_call_status [Symbol, HubspotSDK::Models::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus]
          #   @param from_number [HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
          #   @param potential_recipient_user_ids [Array<Integer>]
          #   @param to_number [HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
          #   @param call_started_timestamp [Time]
          #   @param duration_seconds [Integer]
          #   @param user_id [Integer]

          # @see HubspotSDK::Models::Crm::Extensions::CompletedThirdPartyCallRequest#final_call_status
          module FinalCallStatus
            extend HubspotSDK::Internal::Type::Enum

            BUSY = :BUSY
            CALLING_CRM_USER = :CALLING_CRM_USER
            CANCELED = :CANCELED
            COMPLETED = :COMPLETED
            CONNECTING = :CONNECTING
            FAILED = :FAILED
            HOLD = :HOLD
            IN_PROGRESS = :IN_PROGRESS
            MISSED = :MISSED
            NO_ANSWER = :NO_ANSWER
            QUEUED = :QUEUED
            RINGING = :RINGING
            UNKNOWN = :UNKNOWN

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
