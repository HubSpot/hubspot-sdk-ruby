# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class SubscriptionDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::SubscriptionDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the subscription.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the subscription was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # A description of the subscription.
        sig { returns(String) }
        attr_accessor :description

        # Indicates whether the subscription is active.
        sig { returns(T::Boolean) }
        attr_accessor :is_active

        # Indicates whether the subscription is the default option.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # Indicates whether the subscription is internal.
        sig { returns(T::Boolean) }
        attr_accessor :is_internal

        # The name of the subscription.
        sig { returns(String) }
        attr_accessor :name

        # The date and time when the subscription was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The ID of the business unit associated with the subscription.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        # The method of communication for the subscription.
        sig { returns(T.nilable(String)) }
        attr_reader :communication_method

        sig { params(communication_method: String).void }
        attr_writer :communication_method

        # The purpose of the subscription.
        sig { returns(T.nilable(String)) }
        attr_reader :purpose

        sig { params(purpose: String).void }
        attr_writer :purpose

        # A list of translations associated with the subscription.
        sig do
          returns(
            T.nilable(
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicSubscriptionTranslation
              ]
            )
          )
        end
        attr_reader :subscription_translations

        sig do
          params(
            subscription_translations:
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicSubscriptionTranslation::OrHash
              ]
          ).void
        end
        attr_writer :subscription_translations

        sig do
          params(
            id: String,
            created_at: Time,
            description: String,
            is_active: T::Boolean,
            is_default: T::Boolean,
            is_internal: T::Boolean,
            name: String,
            updated_at: Time,
            business_unit_id: Integer,
            communication_method: String,
            purpose: String,
            subscription_translations:
              T::Array[
                HubspotSDK::CommunicationPreferences::PublicSubscriptionTranslation::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the subscription.
          id:,
          # The date and time when the subscription was created.
          created_at:,
          # A description of the subscription.
          description:,
          # Indicates whether the subscription is active.
          is_active:,
          # Indicates whether the subscription is the default option.
          is_default:,
          # Indicates whether the subscription is internal.
          is_internal:,
          # The name of the subscription.
          name:,
          # The date and time when the subscription was last updated.
          updated_at:,
          # The ID of the business unit associated with the subscription.
          business_unit_id: nil,
          # The method of communication for the subscription.
          communication_method: nil,
          # The purpose of the subscription.
          purpose: nil,
          # A list of translations associated with the subscription.
          subscription_translations: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              description: String,
              is_active: T::Boolean,
              is_default: T::Boolean,
              is_internal: T::Boolean,
              name: String,
              updated_at: Time,
              business_unit_id: Integer,
              communication_method: String,
              purpose: String,
              subscription_translations:
                T::Array[
                  HubspotSDK::CommunicationPreferences::PublicSubscriptionTranslation
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
