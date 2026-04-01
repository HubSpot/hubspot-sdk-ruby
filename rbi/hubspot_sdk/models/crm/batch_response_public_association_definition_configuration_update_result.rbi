# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchResponsePublicAssociationDefinitionConfigurationUpdateResult < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch update operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig do
          returns(
            T::Array[
              HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult
            ]
          )
        end
        attr_accessor :results

        # The date and time when the batch update operation started.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch update operation, which can be CANCELED,
        # COMPLETE, PENDING, or PROCESSING.
        sig do
          returns(
            HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # URLs linking to documentation or resources associated with the batch update
        # operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The date and time when the batch update operation was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[
                HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::OrHash
              ],
            started_at: Time,
            status:
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch update operation was completed.
          completed_at:,
          results:,
          # The date and time when the batch update operation started.
          started_at:,
          # The current status of the batch update operation, which can be CANCELED,
          # COMPLETE, PENDING, or PROCESSING.
          status:,
          # URLs linking to documentation or resources associated with the batch update
          # operation.
          links: nil,
          # The date and time when the batch update operation was requested.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results:
                T::Array[
                  HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult
                ],
              started_at: Time,
              status:
                HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch update operation, which can be CANCELED,
        # COMPLETE, PENDING, or PROCESSING.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status::TaggedSymbol
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
