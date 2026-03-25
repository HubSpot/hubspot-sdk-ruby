# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicEmailEventFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicEmailEventFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the application associated with the email event filter.
        sig { returns(String) }
        attr_accessor :app_id

        # The ID of the email associated with the event filter.
        sig { returns(String) }
        attr_accessor :email_id

        # Indicates the type of filter (EMAIL_EVENT).
        sig do
          returns(HubspotSDK::Crm::PublicEmailEventFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # Specifies the level of the email event, such as EMAIL_API_CAMPAIGN_GROUP.
        sig { returns(String) }
        attr_accessor :level

        # Defines the operation to be applied within the filter (BOUNCED, LINK_CLICKED,
        # MARKED_SPAM, OPENED, OPENED_BUT_LINK_NOT_CLICKED, OPENED_BUT_NOT_REPLIED,
        # RECEIVED, RECEIVED_BUT_NOT_OPENED, REPLIED, SENT, SENT_BUT_LINK_NOT_CLICKED,
        # SENT_BUT_NOT_RECEIVED, UNSUBSCRIBED).
        sig do
          returns(HubspotSDK::Crm::PublicEmailEventFilter::Operator::OrSymbol)
        end
        attr_accessor :operator

        # The URL that was clicked in the email event.
        sig { returns(T.nilable(String)) }
        attr_reader :click_url

        sig { params(click_url: String).void }
        attr_writer :click_url

        # Specifies the criteria for refining the filter by pruning.
        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAllHistoryRefineBy,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            )
          )
        end
        attr_reader :pruning_refine_by

        sig do
          params(
            pruning_refine_by:
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
              )
          ).void
        end
        attr_writer :pruning_refine_by

        sig do
          params(
            app_id: String,
            email_id: String,
            filter_type:
              HubspotSDK::Crm::PublicEmailEventFilter::FilterType::OrSymbol,
            level: String,
            operator:
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::OrSymbol,
            click_url: String,
            pruning_refine_by:
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the application associated with the email event filter.
          app_id:,
          # The ID of the email associated with the event filter.
          email_id:,
          # Indicates the type of filter (EMAIL_EVENT).
          filter_type:,
          # Specifies the level of the email event, such as EMAIL_API_CAMPAIGN_GROUP.
          level:,
          # Defines the operation to be applied within the filter (BOUNCED, LINK_CLICKED,
          # MARKED_SPAM, OPENED, OPENED_BUT_LINK_NOT_CLICKED, OPENED_BUT_NOT_REPLIED,
          # RECEIVED, RECEIVED_BUT_NOT_OPENED, REPLIED, SENT, SENT_BUT_LINK_NOT_CLICKED,
          # SENT_BUT_NOT_RECEIVED, UNSUBSCRIBED).
          operator:,
          # The URL that was clicked in the email event.
          click_url: nil,
          # Specifies the criteria for refining the filter by pruning.
          pruning_refine_by: nil
        )
        end

        sig do
          override.returns(
            {
              app_id: String,
              email_id: String,
              filter_type:
                HubspotSDK::Crm::PublicEmailEventFilter::FilterType::OrSymbol,
              level: String,
              operator:
                HubspotSDK::Crm::PublicEmailEventFilter::Operator::OrSymbol,
              click_url: String,
              pruning_refine_by:
                T.any(
                  HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                  HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                  HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                  HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                  HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                  HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                  HubspotSDK::Crm::PublicAllHistoryRefineBy,
                  HubspotSDK::Crm::PublicTimePointOperation,
                  HubspotSDK::Crm::PublicRangedTimeOperation
                )
            }
          )
        end
        def to_hash
        end

        # Indicates the type of filter (EMAIL_EVENT).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicEmailEventFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_EVENT =
            T.let(
              :EMAIL_EVENT,
              HubspotSDK::Crm::PublicEmailEventFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicEmailEventFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines the operation to be applied within the filter (BOUNCED, LINK_CLICKED,
        # MARKED_SPAM, OPENED, OPENED_BUT_LINK_NOT_CLICKED, OPENED_BUT_NOT_REPLIED,
        # RECEIVED, RECEIVED_BUT_NOT_OPENED, REPLIED, SENT, SENT_BUT_LINK_NOT_CLICKED,
        # SENT_BUT_NOT_RECEIVED, UNSUBSCRIBED).
        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicEmailEventFilter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOUNCED =
            T.let(
              :BOUNCED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          LINK_CLICKED =
            T.let(
              :LINK_CLICKED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          MARKED_SPAM =
            T.let(
              :MARKED_SPAM,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          OPENED =
            T.let(
              :OPENED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          OPENED_BUT_LINK_NOT_CLICKED =
            T.let(
              :OPENED_BUT_LINK_NOT_CLICKED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          OPENED_BUT_NOT_REPLIED =
            T.let(
              :OPENED_BUT_NOT_REPLIED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          RECEIVED =
            T.let(
              :RECEIVED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          RECEIVED_BUT_NOT_OPENED =
            T.let(
              :RECEIVED_BUT_NOT_OPENED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          REPLIED =
            T.let(
              :REPLIED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          SENT =
            T.let(
              :SENT,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          SENT_BUT_LINK_NOT_CLICKED =
            T.let(
              :SENT_BUT_LINK_NOT_CLICKED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          SENT_BUT_NOT_RECEIVED =
            T.let(
              :SENT_BUT_NOT_RECEIVED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )
          UNSUBSCRIBED =
            T.let(
              :UNSUBSCRIBED,
              HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicEmailEventFilter::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the criteria for refining the filter by pruning.
        module PruningRefineBy
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAllHistoryRefineBy,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicEmailEventFilter::PruningRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
