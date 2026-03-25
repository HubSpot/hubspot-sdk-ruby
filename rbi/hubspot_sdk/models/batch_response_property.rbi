# typed: strong

module HubspotSDK
  module Models
    class BatchResponseProperty < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::BatchResponseProperty,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(Time) }
      attr_accessor :completed_at

      sig { returns(T::Array[HubspotSDK::Cms::Property1]) }
      attr_accessor :results

      sig { returns(Time) }
      attr_accessor :started_at

      sig { returns(HubspotSDK::BatchResponseProperty::Status::TaggedSymbol) }
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
          results: T::Array[HubspotSDK::Cms::Property1::OrHash],
          started_at: Time,
          status: HubspotSDK::BatchResponseProperty::Status::OrSymbol,
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
            results: T::Array[HubspotSDK::Cms::Property1],
            started_at: Time,
            status: HubspotSDK::BatchResponseProperty::Status::TaggedSymbol,
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
            T.all(Symbol, HubspotSDK::BatchResponseProperty::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELED =
          T.let(
            :CANCELED,
            HubspotSDK::BatchResponseProperty::Status::TaggedSymbol
          )
        COMPLETE =
          T.let(
            :COMPLETE,
            HubspotSDK::BatchResponseProperty::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :PENDING,
            HubspotSDK::BatchResponseProperty::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :PROCESSING,
            HubspotSDK::BatchResponseProperty::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::BatchResponseProperty::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
