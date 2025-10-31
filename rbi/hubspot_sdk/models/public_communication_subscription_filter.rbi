# typed: strong

module HubspotSDK
  module Models
    class PublicCommunicationSubscriptionFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicCommunicationSubscriptionFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[String]) }
      attr_accessor :accepted_opt_states

      sig { returns(String) }
      attr_accessor :channel

      sig do
        returns(
          HubspotSDK::PublicCommunicationSubscriptionFilter::FilterType::OrSymbol
        )
      end
      attr_accessor :filter_type

      sig { returns(T::Array[String]) }
      attr_accessor :subscription_ids

      sig { returns(String) }
      attr_accessor :subscription_type

      sig { returns(T.nilable(String)) }
      attr_reader :business_unit_id

      sig { params(business_unit_id: String).void }
      attr_writer :business_unit_id

      sig do
        params(
          accepted_opt_states: T::Array[String],
          channel: String,
          filter_type:
            HubspotSDK::PublicCommunicationSubscriptionFilter::FilterType::OrSymbol,
          subscription_ids: T::Array[String],
          subscription_type: String,
          business_unit_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        accepted_opt_states:,
        channel:,
        filter_type:,
        subscription_ids:,
        subscription_type:,
        business_unit_id: nil
      )
      end

      sig do
        override.returns(
          {
            accepted_opt_states: T::Array[String],
            channel: String,
            filter_type:
              HubspotSDK::PublicCommunicationSubscriptionFilter::FilterType::OrSymbol,
            subscription_ids: T::Array[String],
            subscription_type: String,
            business_unit_id: String
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicCommunicationSubscriptionFilter::FilterType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMMUNICATION_SUBSCRIPTION =
          T.let(
            :COMMUNICATION_SUBSCRIPTION,
            HubspotSDK::PublicCommunicationSubscriptionFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicCommunicationSubscriptionFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
