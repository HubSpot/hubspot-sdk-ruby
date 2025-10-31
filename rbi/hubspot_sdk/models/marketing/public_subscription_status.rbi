# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicSubscriptionStatus < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicSubscriptionStatus,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID for the subscription.
        sig { returns(String) }
        attr_accessor :id

        # A description of the subscription.
        sig { returns(String) }
        attr_accessor :description

        # The name of the subscription.
        sig { returns(String) }
        attr_accessor :name

        # Where the status is determined from e.g. PORTAL_WIDE_STATUS if the contact opted
        # out from the portal.
        sig do
          returns(
            HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
          )
        end
        attr_accessor :source_of_status

        # Whether the contact is subscribed.
        sig do
          returns(
            HubspotSDK::Marketing::PublicSubscriptionStatus::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The ID of the brand that the subscription is associated with, if there is one.
        sig { returns(T.nilable(Integer)) }
        attr_reader :brand_id

        sig { params(brand_id: Integer).void }
        attr_writer :brand_id

        # The legal reason for the current status of the subscription.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          )
        end
        attr_reader :legal_basis

        sig do
          params(
            legal_basis:
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::OrSymbol
          ).void
        end
        attr_writer :legal_basis

        # A more detailed explanation to go with the legal basis.
        sig { returns(T.nilable(String)) }
        attr_reader :legal_basis_explanation

        sig { params(legal_basis_explanation: String).void }
        attr_writer :legal_basis_explanation

        # The name of the preferences group that the subscription is associated with.
        sig { returns(T.nilable(String)) }
        attr_reader :preference_group_name

        sig { params(preference_group_name: String).void }
        attr_writer :preference_group_name

        sig do
          params(
            id: String,
            description: String,
            name: String,
            source_of_status:
              HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus::OrSymbol,
            status:
              HubspotSDK::Marketing::PublicSubscriptionStatus::Status::OrSymbol,
            brand_id: Integer,
            legal_basis:
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::OrSymbol,
            legal_basis_explanation: String,
            preference_group_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID for the subscription.
          id:,
          # A description of the subscription.
          description:,
          # The name of the subscription.
          name:,
          # Where the status is determined from e.g. PORTAL_WIDE_STATUS if the contact opted
          # out from the portal.
          source_of_status:,
          # Whether the contact is subscribed.
          status:,
          # The ID of the brand that the subscription is associated with, if there is one.
          brand_id: nil,
          # The legal reason for the current status of the subscription.
          legal_basis: nil,
          # A more detailed explanation to go with the legal basis.
          legal_basis_explanation: nil,
          # The name of the preferences group that the subscription is associated with.
          preference_group_name: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              description: String,
              name: String,
              source_of_status:
                HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol,
              status:
                HubspotSDK::Marketing::PublicSubscriptionStatus::Status::TaggedSymbol,
              brand_id: Integer,
              legal_basis:
                HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol,
              legal_basis_explanation: String,
              preference_group_name: String
            }
          )
        end
        def to_hash
        end

        # Where the status is determined from e.g. PORTAL_WIDE_STATUS if the contact opted
        # out from the portal.
        module SourceOfStatus
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTAL_WIDE_STATUS =
            T.let(
              :PORTAL_WIDE_STATUS,
              HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
            )
          BRAND_WIDE_STATUS =
            T.let(
              :BRAND_WIDE_STATUS,
              HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
            )
          SUBSCRIPTION_STATUS =
            T.let(
              :SUBSCRIPTION_STATUS,
              HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the contact is subscribed.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicSubscriptionStatus::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSCRIBED =
            T.let(
              :SUBSCRIBED,
              HubspotSDK::Marketing::PublicSubscriptionStatus::Status::TaggedSymbol
            )
          NOT_SUBSCRIBED =
            T.let(
              :NOT_SUBSCRIBED,
              HubspotSDK::Marketing::PublicSubscriptionStatus::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicSubscriptionStatus::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The legal reason for the current status of the subscription.
        module LegalBasis
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEGITIMATE_INTEREST_PQL =
            T.let(
              :LEGITIMATE_INTEREST_PQL,
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_CLIENT =
            T.let(
              :LEGITIMATE_INTEREST_CLIENT,
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          PERFORMANCE_OF_CONTRACT =
            T.let(
              :PERFORMANCE_OF_CONTRACT,
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          CONSENT_WITH_NOTICE =
            T.let(
              :CONSENT_WITH_NOTICE,
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          NON_GDPR =
            T.let(
              :NON_GDPR,
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          PROCESS_AND_STORE =
            T.let(
              :PROCESS_AND_STORE,
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )
          LEGITIMATE_INTEREST_OTHER =
            T.let(
              :LEGITIMATE_INTEREST_OTHER,
              HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
