# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicEmailEventFilter < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #   The ID of the application associated with the email event filter.
        #
        #   @return [String]
        required :app_id, String, api_name: :appId

        # @!attribute email_id
        #   The ID of the email associated with the event filter.
        #
        #   @return [String]
        required :email_id, String, api_name: :emailId

        # @!attribute filter_type
        #   Indicates the type of filter (EMAIL_EVENT).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicEmailEventFilter::FilterType]
        required :filter_type,
                 enum: -> { HubspotSDK::Crm::PublicEmailEventFilter::FilterType },
                 api_name: :filterType

        # @!attribute level
        #   Specifies the level of the email event, such as EMAIL_API_CAMPAIGN_GROUP.
        #
        #   @return [String]
        required :level, String

        # @!attribute operator
        #   Defines the operation to be applied within the filter (BOUNCED, LINK_CLICKED,
        #   MARKED_SPAM, OPENED, OPENED_BUT_LINK_NOT_CLICKED, OPENED_BUT_NOT_REPLIED,
        #   RECEIVED, RECEIVED_BUT_NOT_OPENED, REPLIED, SENT, SENT_BUT_LINK_NOT_CLICKED,
        #   SENT_BUT_NOT_RECEIVED, UNSUBSCRIBED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicEmailEventFilter::Operator]
        required :operator, enum: -> { HubspotSDK::Crm::PublicEmailEventFilter::Operator }

        # @!attribute click_url
        #   The URL that was clicked in the email event.
        #
        #   @return [String, nil]
        optional :click_url, String, api_name: :clickUrl

        # @!attribute pruning_refine_by
        #   Specifies the criteria for refining the filter by pruning.
        #
        #   @return [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation, nil]
        optional :pruning_refine_by,
                 union: -> { HubspotSDK::Crm::PublicEmailEventFilter::PruningRefineBy },
                 api_name: :pruningRefineBy

        # @!method initialize(app_id:, email_id:, filter_type:, level:, operator:, click_url: nil, pruning_refine_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicEmailEventFilter} for more details.
        #
        #   @param app_id [String] The ID of the application associated with the email event filter.
        #
        #   @param email_id [String] The ID of the email associated with the event filter.
        #
        #   @param filter_type [Symbol, HubspotSDK::Models::Crm::PublicEmailEventFilter::FilterType] Indicates the type of filter (EMAIL_EVENT).
        #
        #   @param level [String] Specifies the level of the email event, such as EMAIL_API_CAMPAIGN_GROUP.
        #
        #   @param operator [Symbol, HubspotSDK::Models::Crm::PublicEmailEventFilter::Operator] Defines the operation to be applied within the filter (BOUNCED, LINK_CLICKED, MA
        #
        #   @param click_url [String] The URL that was clicked in the email event.
        #
        #   @param pruning_refine_by [HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation] Specifies the criteria for refining the filter by pruning.

        # Indicates the type of filter (EMAIL_EVENT).
        #
        # @see HubspotSDK::Models::Crm::PublicEmailEventFilter#filter_type
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          EMAIL_EVENT = :EMAIL_EVENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the operation to be applied within the filter (BOUNCED, LINK_CLICKED,
        # MARKED_SPAM, OPENED, OPENED_BUT_LINK_NOT_CLICKED, OPENED_BUT_NOT_REPLIED,
        # RECEIVED, RECEIVED_BUT_NOT_OPENED, REPLIED, SENT, SENT_BUT_LINK_NOT_CLICKED,
        # SENT_BUT_NOT_RECEIVED, UNSUBSCRIBED).
        #
        # @see HubspotSDK::Models::Crm::PublicEmailEventFilter#operator
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          BOUNCED = :BOUNCED
          LINK_CLICKED = :LINK_CLICKED
          MARKED_SPAM = :MARKED_SPAM
          OPENED = :OPENED
          OPENED_BUT_LINK_NOT_CLICKED = :OPENED_BUT_LINK_NOT_CLICKED
          OPENED_BUT_NOT_REPLIED = :OPENED_BUT_NOT_REPLIED
          RECEIVED = :RECEIVED
          RECEIVED_BUT_NOT_OPENED = :RECEIVED_BUT_NOT_OPENED
          REPLIED = :REPLIED
          SENT = :SENT
          SENT_BUT_LINK_NOT_CLICKED = :SENT_BUT_LINK_NOT_CLICKED
          SENT_BUT_NOT_RECEIVED = :SENT_BUT_NOT_RECEIVED
          UNSUBSCRIBED = :UNSUBSCRIBED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the criteria for refining the filter by pruning.
        #
        # @see HubspotSDK::Models::Crm::PublicEmailEventFilter#pruning_refine_by
        module PruningRefineBy
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Crm::PublicNumOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicSetOccurrencesRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy }

          variant -> { HubspotSDK::Crm::PublicAllHistoryRefineBy }

          variant -> { HubspotSDK::Crm::PublicTimePointOperation }

          variant -> { HubspotSDK::Crm::PublicRangedTimeOperation }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Crm::PublicNumOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicSetOccurrencesRefineBy, HubspotSDK::Models::Crm::PublicRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicRelativeRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Crm::PublicAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Crm::PublicAllHistoryRefineBy, HubspotSDK::Models::Crm::PublicTimePointOperation, HubspotSDK::Models::Crm::PublicRangedTimeOperation)]
        end
      end
    end
  end
end
