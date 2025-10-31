# typed: strong

module HubspotSDK
  module Models
    class PublicEmailSubscriptionFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicEmailSubscriptionFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[String]) }
      attr_accessor :accepted_statuses

      sig do
        returns(HubspotSDK::PublicEmailSubscriptionFilter::FilterType::OrSymbol)
      end
      attr_accessor :filter_type

      sig { returns(T::Array[String]) }
      attr_accessor :subscription_ids

      sig { returns(T.nilable(String)) }
      attr_reader :subscription_type

      sig { params(subscription_type: String).void }
      attr_writer :subscription_type

      sig do
        params(
          accepted_statuses: T::Array[String],
          filter_type:
            HubspotSDK::PublicEmailSubscriptionFilter::FilterType::OrSymbol,
          subscription_ids: T::Array[String],
          subscription_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        accepted_statuses:,
        filter_type:,
        subscription_ids:,
        subscription_type: nil
      )
      end

      sig do
        override.returns(
          {
            accepted_statuses: T::Array[String],
            filter_type:
              HubspotSDK::PublicEmailSubscriptionFilter::FilterType::OrSymbol,
            subscription_ids: T::Array[String],
            subscription_type: String
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicEmailSubscriptionFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_SUBSCRIPTION =
          T.let(
            :EMAIL_SUBSCRIPTION,
            HubspotSDK::PublicEmailSubscriptionFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicEmailSubscriptionFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
