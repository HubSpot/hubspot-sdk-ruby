# typed: strong

module HubspotSDK
  module Models
    class ActionResponse < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::ActionResponse, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(Time) }
      attr_accessor :completed_at

      sig { returns(Time) }
      attr_accessor :started_at

      sig { returns(HubspotSDK::ActionResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :links

      sig { params(links: T::Hash[Symbol, String]).void }
      attr_writer :links

      sig { returns(T.nilable(Time)) }
      attr_reader :requested_at

      sig { params(requested_at: Time).void }
      attr_writer :requested_at

      sig do
        params(
          completed_at: Time,
          started_at: Time,
          status: HubspotSDK::ActionResponse::Status::OrSymbol,
          links: T::Hash[Symbol, String],
          requested_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        completed_at:,
        started_at:,
        status:,
        links: nil,
        requested_at: nil
      )
      end

      sig do
        override.returns(
          {
            completed_at: Time,
            started_at: Time,
            status: HubspotSDK::ActionResponse::Status::TaggedSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          }
        )
      end
      def to_hash
      end

      module Status
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, HubspotSDK::ActionResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:PENDING, HubspotSDK::ActionResponse::Status::TaggedSymbol)
        PROCESSING =
          T.let(:PROCESSING, HubspotSDK::ActionResponse::Status::TaggedSymbol)
        CANCELED =
          T.let(:CANCELED, HubspotSDK::ActionResponse::Status::TaggedSymbol)
        COMPLETE =
          T.let(:COMPLETE, HubspotSDK::ActionResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[HubspotSDK::ActionResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
