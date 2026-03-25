# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class ChirpAIContextObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute application_group
        #
        #   @return [String]
        required :application_group, String, api_name: :applicationGroup

        # @!attribute application_id
        #
        #   @return [String]
        required :application_id, String, api_name: :applicationId

        # @!attribute metadata
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute otel_context_holder
        #
        #   @return [Hash{Symbol=>String}]
        required :otel_context_holder,
                 HubspotSDK::Internal::Type::HashOf[String],
                 api_name: :otelContextHolder

        # @!attribute unstructured_sources
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Automation::ChirpAIContextObject::UnstructuredSource>]
        required :unstructured_sources,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Automation::ChirpAIContextObject::UnstructuredSource]
                 },
                 api_name: :unstructuredSources

        # @!attribute compliance_ids
        #
        #   @return [HubspotSDK::Models::Automation::ComplianceIDs, nil]
        optional :compliance_ids, -> { HubspotSDK::Automation::ComplianceIDs }, api_name: :complianceIds

        # @!attribute feature_id
        #
        #   @return [String, nil]
        optional :feature_id, String, api_name: :featureId

        # @!attribute inference_id
        #
        #   @return [String, nil]
        optional :inference_id, String, api_name: :inferenceId

        # @!attribute trajectory_id
        #
        #   @return [String, nil]
        optional :trajectory_id, String, api_name: :trajectoryId

        # @!method initialize(application_group:, application_id:, metadata:, otel_context_holder:, unstructured_sources:, compliance_ids: nil, feature_id: nil, inference_id: nil, trajectory_id: nil)
        #   @param application_group [String]
        #   @param application_id [String]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param otel_context_holder [Hash{Symbol=>String}]
        #   @param unstructured_sources [Array<Symbol, HubspotSDK::Models::Automation::ChirpAIContextObject::UnstructuredSource>]
        #   @param compliance_ids [HubspotSDK::Models::Automation::ComplianceIDs]
        #   @param feature_id [String]
        #   @param inference_id [String]
        #   @param trajectory_id [String]

        module UnstructuredSource
          extend HubspotSDK::Internal::Type::Enum

          NONE = :NONE
          USER_INPUT = :USER_INPUT
          LOGGED_EMAIL = :LOGGED_EMAIL
          VIDEO_CALL = :VIDEO_CALL
          AUDIO_CALL = :AUDIO_CALL
          CALL_TRANSCRIPT = :CALL_TRANSCRIPT
          MEETING_TRANSCRIPT = :MEETING_TRANSCRIPT
          FORMS = :FORMS
          FEEDBACK_SURVEY = :FEEDBACK_SURVEY
          PDF = :PDF
          QUOTE = :QUOTE
          INVOICE = :INVOICE
          OTHER_ATTACHMENT_DOC = :OTHER_ATTACHMENT_DOC
          WHATSAPP = :WHATSAPP
          SMS = :SMS
          CHAT = :CHAT
          FACEBOOK_MESSENGER = :FACEBOOK_MESSENGER
          CUSTOM_CHANNEL_OR_API = :CUSTOM_CHANNEL_OR_API
          MANY = :MANY
          NOTE = :NOTE
          DERIVED = :DERIVED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
