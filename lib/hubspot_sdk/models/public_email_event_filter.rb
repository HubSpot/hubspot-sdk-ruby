# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicEmailEventFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute app_id
      #
      #   @return [String]
      required :app_id, String, api_name: :appId

      # @!attribute email_id
      #
      #   @return [String]
      required :email_id, String, api_name: :emailId

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicEmailEventFilter::FilterType]
      required :filter_type,
               enum: -> {
                 HubspotSDK::PublicEmailEventFilter::FilterType
               },
               api_name: :filterType

      # @!attribute level
      #
      #   @return [String]
      required :level, String

      # @!attribute operator
      #
      #   @return [Symbol, HubspotSDK::Models::PublicEmailEventFilter::Operator]
      required :operator, enum: -> { HubspotSDK::PublicEmailEventFilter::Operator }

      # @!attribute click_url
      #
      #   @return [String, nil]
      optional :click_url, String, api_name: :clickUrl

      # @!attribute pruning_refine_by
      #
      #   @return [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation, nil]
      optional :pruning_refine_by,
               union: -> { HubspotSDK::PublicEmailEventFilter::PruningRefineBy },
               api_name: :pruningRefineBy

      # @!method initialize(app_id:, email_id:, filter_type:, level:, operator:, click_url: nil, pruning_refine_by: nil)
      #   @param app_id [String]
      #   @param email_id [String]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicEmailEventFilter::FilterType]
      #   @param level [String]
      #   @param operator [Symbol, HubspotSDK::Models::PublicEmailEventFilter::Operator]
      #   @param click_url [String]
      #   @param pruning_refine_by [HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation]

      # @see HubspotSDK::Models::PublicEmailEventFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        EMAIL_EVENT = :EMAIL_EVENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicEmailEventFilter#operator
      module Operator
        extend HubspotSDK::Internal::Type::Enum

        LINK_CLICKED = :LINK_CLICKED
        MARKED_SPAM = :MARKED_SPAM
        OPENED = :OPENED
        OPENED_BUT_LINK_NOT_CLICKED = :OPENED_BUT_LINK_NOT_CLICKED
        OPENED_BUT_NOT_REPLIED = :OPENED_BUT_NOT_REPLIED
        REPLIED = :REPLIED
        UNSUBSCRIBED = :UNSUBSCRIBED
        BOUNCED = :BOUNCED
        RECEIVED = :RECEIVED
        RECEIVED_BUT_NOT_OPENED = :RECEIVED_BUT_NOT_OPENED
        SENT = :SENT
        SENT_BUT_LINK_NOT_CLICKED = :SENT_BUT_LINK_NOT_CLICKED
        SENT_BUT_NOT_RECEIVED = :SENT_BUT_NOT_RECEIVED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicEmailEventFilter#pruning_refine_by
      module PruningRefineBy
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::PublicNumOccurrencesRefineBy }

        variant -> { HubspotSDK::PublicSetOccurrencesRefineBy }

        variant -> { HubspotSDK::PublicRelativeComparativeTimestampRefineBy }

        variant -> { HubspotSDK::PublicRelativeRangedTimestampRefineBy }

        variant -> { HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy }

        variant -> { HubspotSDK::PublicAbsoluteRangedTimestampRefineBy }

        variant -> { HubspotSDK::PublicAllHistoryRefineBy }

        variant -> { HubspotSDK::PublicTimePointOperation }

        variant -> { HubspotSDK::PublicRangedTimeOperation }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::PublicNumOccurrencesRefineBy, HubspotSDK::Models::PublicSetOccurrencesRefineBy, HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::PublicAllHistoryRefineBy, HubspotSDK::Models::PublicTimePointOperation, HubspotSDK::Models::PublicRangedTimeOperation)]
      end
    end
  end
end
