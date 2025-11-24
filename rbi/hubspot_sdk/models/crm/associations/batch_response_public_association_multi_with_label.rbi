# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        class BatchResponsePublicAssociationMultiWithLabel < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The timestamp when the batch processing was completed, in ISO 8601 format.
          sig { returns(Time) }
          attr_accessor :completed_at

          sig do
            returns(
              T::Array[
                HubspotSDK::Crm::Associations::PublicAssociationMultiWithLabel
              ]
            )
          end
          attr_accessor :results

          # The timestamp when the batch processing began, in ISO 8601 format.
          sig { returns(Time) }
          attr_accessor :started_at

          # The status of the batch processing request: "PENDING", "PROCESSING", "CANCELED",
          # or "COMPLETE".
          sig do
            returns(
              HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
          attr_reader :errors

          sig do
            params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void
          end
          attr_writer :errors

          # An object containing relevant links related to the batch request.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :links

          sig { params(links: T::Hash[Symbol, String]).void }
          attr_writer :links

          # The number of errors encountered during the batch processing.
          sig { returns(T.nilable(Integer)) }
          attr_reader :num_errors

          sig { params(num_errors: Integer).void }
          attr_writer :num_errors

          # The timestamp when the batch request was initially made, in ISO 8601 format.
          sig { returns(T.nilable(Time)) }
          attr_reader :requested_at

          sig { params(requested_at: Time).void }
          attr_writer :requested_at

          sig do
            params(
              completed_at: Time,
              results:
                T::Array[
                  HubspotSDK::Crm::Associations::PublicAssociationMultiWithLabel::OrHash
                ],
              started_at: Time,
              status:
                HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status::OrSymbol,
              errors: T::Array[HubspotSDK::StandardError::OrHash],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The timestamp when the batch processing was completed, in ISO 8601 format.
            completed_at:,
            results:,
            # The timestamp when the batch processing began, in ISO 8601 format.
            started_at:,
            # The status of the batch processing request: "PENDING", "PROCESSING", "CANCELED",
            # or "COMPLETE".
            status:,
            errors: nil,
            # An object containing relevant links related to the batch request.
            links: nil,
            # The number of errors encountered during the batch processing.
            num_errors: nil,
            # The timestamp when the batch request was initially made, in ISO 8601 format.
            requested_at: nil
          )
          end

          sig do
            override.returns(
              {
                completed_at: Time,
                results:
                  T::Array[
                    HubspotSDK::Crm::Associations::PublicAssociationMultiWithLabel
                  ],
                started_at: Time,
                status:
                  HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol,
                errors: T::Array[HubspotSDK::StandardError],
                links: T::Hash[Symbol, String],
                num_errors: Integer,
                requested_at: Time
              }
            )
          end
          def to_hash
          end

          # The status of the batch processing request: "PENDING", "PROCESSING", "CANCELED",
          # or "COMPLETE".
          module Status
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CANCELED =
              T.let(
                :CANCELED,
                HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :COMPLETE,
                HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :PENDING,
                HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
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
end
