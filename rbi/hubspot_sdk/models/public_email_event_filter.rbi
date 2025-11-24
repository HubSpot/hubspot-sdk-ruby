# typed: strong

module HubspotSDK
  module Models
    class PublicEmailEventFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicEmailEventFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :app_id

      sig { returns(String) }
      attr_accessor :email_id

      sig { returns(HubspotSDK::PublicEmailEventFilter::FilterType::OrSymbol) }
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :level

      sig { returns(HubspotSDK::PublicEmailEventFilter::Operator::OrSymbol) }
      attr_accessor :operator

      sig { returns(T.nilable(String)) }
      attr_reader :click_url

      sig { params(click_url: String).void }
      attr_writer :click_url

      sig do
        returns(
          T.nilable(
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy,
              HubspotSDK::PublicSetOccurrencesRefineBy,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
              HubspotSDK::PublicAllHistoryRefineBy,
              HubspotSDK::PublicTimePointOperation,
              HubspotSDK::PublicRangedTimeOperation
            )
          )
        )
      end
      attr_reader :pruning_refine_by

      sig do
        params(
          pruning_refine_by:
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicSetOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAllHistoryRefineBy::OrHash,
              HubspotSDK::PublicTimePointOperation::OrHash,
              HubspotSDK::PublicRangedTimeOperation::OrHash
            )
        ).void
      end
      attr_writer :pruning_refine_by

      sig do
        params(
          app_id: String,
          email_id: String,
          filter_type: HubspotSDK::PublicEmailEventFilter::FilterType::OrSymbol,
          level: String,
          operator: HubspotSDK::PublicEmailEventFilter::Operator::OrSymbol,
          click_url: String,
          pruning_refine_by:
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicSetOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAllHistoryRefineBy::OrHash,
              HubspotSDK::PublicTimePointOperation::OrHash,
              HubspotSDK::PublicRangedTimeOperation::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        app_id:,
        email_id:,
        filter_type:,
        level:,
        operator:,
        click_url: nil,
        pruning_refine_by: nil
      )
      end

      sig do
        override.returns(
          {
            app_id: String,
            email_id: String,
            filter_type:
              HubspotSDK::PublicEmailEventFilter::FilterType::OrSymbol,
            level: String,
            operator: HubspotSDK::PublicEmailEventFilter::Operator::OrSymbol,
            click_url: String,
            pruning_refine_by:
              T.any(
                HubspotSDK::PublicNumOccurrencesRefineBy,
                HubspotSDK::PublicSetOccurrencesRefineBy,
                HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::PublicAllHistoryRefineBy,
                HubspotSDK::PublicTimePointOperation,
                HubspotSDK::PublicRangedTimeOperation
              )
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicEmailEventFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_EVENT =
          T.let(
            :EMAIL_EVENT,
            HubspotSDK::PublicEmailEventFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicEmailEventFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Operator
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicEmailEventFilter::Operator)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOUNCED =
          T.let(
            :BOUNCED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        LINK_CLICKED =
          T.let(
            :LINK_CLICKED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        MARKED_SPAM =
          T.let(
            :MARKED_SPAM,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        OPENED =
          T.let(
            :OPENED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        OPENED_BUT_LINK_NOT_CLICKED =
          T.let(
            :OPENED_BUT_LINK_NOT_CLICKED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        OPENED_BUT_NOT_REPLIED =
          T.let(
            :OPENED_BUT_NOT_REPLIED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        RECEIVED =
          T.let(
            :RECEIVED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        RECEIVED_BUT_NOT_OPENED =
          T.let(
            :RECEIVED_BUT_NOT_OPENED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        REPLIED =
          T.let(
            :REPLIED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        SENT =
          T.let(
            :SENT,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        SENT_BUT_LINK_NOT_CLICKED =
          T.let(
            :SENT_BUT_LINK_NOT_CLICKED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        SENT_BUT_NOT_RECEIVED =
          T.let(
            :SENT_BUT_NOT_RECEIVED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )
        UNSUBSCRIBED =
          T.let(
            :UNSUBSCRIBED,
            HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicEmailEventFilter::Operator::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module PruningRefineBy
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy,
              HubspotSDK::PublicSetOccurrencesRefineBy,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
              HubspotSDK::PublicAllHistoryRefineBy,
              HubspotSDK::PublicTimePointOperation,
              HubspotSDK::PublicRangedTimeOperation
            )
          end

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicEmailEventFilter::PruningRefineBy::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
