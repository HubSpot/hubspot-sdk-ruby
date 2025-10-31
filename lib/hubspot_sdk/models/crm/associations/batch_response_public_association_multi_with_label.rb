# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class BatchResponsePublicAssociationMultiWithLabel < HubspotSDK::Internal::Type::BaseModel
          # @!attribute completed_at
          #
          #   @return [Time]
          required :completed_at, Time, api_name: :completedAt

          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::CRM::Associations::PublicAssociationMultiWithLabel>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::PublicAssociationMultiWithLabel] }

          # @!attribute started_at
          #
          #   @return [Time]
          required :started_at, Time, api_name: :startedAt

          # @!attribute status
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::Associations::BatchResponsePublicAssociationMultiWithLabel::Status]
          required :status,
                   enum: -> { HubspotSDK::CRM::Associations::BatchResponsePublicAssociationMultiWithLabel::Status }

          # @!attribute errors
          #
          #   @return [Array<HubspotSDK::Models::CRM::Associations::StandardError1>, nil]
          optional :errors,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::StandardError1] }

          # @!attribute links
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :links, HubspotSDK::Internal::Type::HashOf[String]

          # @!attribute num_errors
          #
          #   @return [Integer, nil]
          optional :num_errors, Integer, api_name: :numErrors

          # @!attribute requested_at
          #
          #   @return [Time, nil]
          optional :requested_at, Time, api_name: :requestedAt

          # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
          #   @param completed_at [Time]
          #   @param results [Array<HubspotSDK::Models::CRM::Associations::PublicAssociationMultiWithLabel>]
          #   @param started_at [Time]
          #   @param status [Symbol, HubspotSDK::Models::CRM::Associations::BatchResponsePublicAssociationMultiWithLabel::Status]
          #   @param errors [Array<HubspotSDK::Models::CRM::Associations::StandardError1>]
          #   @param links [Hash{Symbol=>String}]
          #   @param num_errors [Integer]
          #   @param requested_at [Time]

          # @see HubspotSDK::Models::CRM::Associations::BatchResponsePublicAssociationMultiWithLabel#status
          module Status
            extend HubspotSDK::Internal::Type::Enum

            PENDING = :PENDING
            PROCESSING = :PROCESSING
            CANCELED = :CANCELED
            COMPLETE = :COMPLETE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
