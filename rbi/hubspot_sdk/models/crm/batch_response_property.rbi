# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchResponseProperty < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchResponseProperty,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The timestamp indicating when the batch operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubspotSDK::Property]) }
        attr_accessor :results

        # The timestamp indicating when the batch operation began processing.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, with possible values being CANCELED,
        # COMPLETE, PENDING, or PROCESSING.
        sig do
          returns(HubspotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A collection of URLs linking to documentation or resources related to the batch
        # operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The total number of errors encountered during the batch operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The timestamp indicating when the batch operation was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubspotSDK::Property::OrHash],
            started_at: Time,
            status: HubspotSDK::Crm::BatchResponseProperty::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp indicating when the batch operation was completed.
          completed_at:,
          results:,
          # The timestamp indicating when the batch operation began processing.
          started_at:,
          # The current status of the batch operation, with possible values being CANCELED,
          # COMPLETE, PENDING, or PROCESSING.
          status:,
          errors: nil,
          # A collection of URLs linking to documentation or resources related to the batch
          # operation.
          links: nil,
          # The total number of errors encountered during the batch operation.
          num_errors: nil,
          # The timestamp indicating when the batch operation was requested.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubspotSDK::Property],
              started_at: Time,
              status:
                HubspotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, with possible values being CANCELED,
        # COMPLETE, PENDING, or PROCESSING.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::BatchResponseProperty::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
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
