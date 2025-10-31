# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchResponsePublicAssociationMultiWithLabel < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :completed_at

        sig do
          returns(T::Array[HubspotSDK::CRM::PublicAssociationMultiWithLabel])
        end
        attr_accessor :results

        sig { returns(Time) }
        attr_accessor :started_at

        sig do
          returns(
            HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[
                HubspotSDK::CRM::PublicAssociationMultiWithLabel::OrHash
              ],
            started_at: Time,
            status:
              HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          completed_at:,
          results:,
          started_at:,
          status:,
          errors: nil,
          links: nil,
          num_errors: nil,
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results:
                T::Array[HubspotSDK::CRM::PublicAssociationMultiWithLabel],
              started_at: Time,
              status:
                HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::BatchResponsePublicAssociationMultiWithLabel::Status::TaggedSymbol
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
