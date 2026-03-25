# typed: strong

module HubspotSDK
  module Models
    class ActionResponse < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::ActionResponse, HubspotSDK::Internal::AnyHash)
        end

      # The timestamp indicating when the action was completed.
      sig { returns(Time) }
      attr_accessor :completed_at

      # The timestamp indicating when the action was started.
      sig { returns(Time) }
      attr_accessor :started_at

      # The current status of the action, with possible values: CANCELED, COMPLETE,
      # PENDING, PROCESSING.
      sig { returns(HubspotSDK::ActionResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # A collection of related links associated with the action.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :links

      sig { params(links: T::Hash[Symbol, String]).void }
      attr_writer :links

      # The timestamp indicating when the action was requested.
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
        # The timestamp indicating when the action was completed.
        completed_at:,
        # The timestamp indicating when the action was started.
        started_at:,
        # The current status of the action, with possible values: CANCELED, COMPLETE,
        # PENDING, PROCESSING.
        status:,
        # A collection of related links associated with the action.
        links: nil,
        # The timestamp indicating when the action was requested.
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

      # The current status of the action, with possible values: CANCELED, COMPLETE,
      # PENDING, PROCESSING.
      module Status
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, HubspotSDK::ActionResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELED =
          T.let(:CANCELED, HubspotSDK::ActionResponse::Status::TaggedSymbol)
        COMPLETE =
          T.let(:COMPLETE, HubspotSDK::ActionResponse::Status::TaggedSymbol)
        PENDING =
          T.let(:PENDING, HubspotSDK::ActionResponse::Status::TaggedSymbol)
        PROCESSING =
          T.let(:PROCESSING, HubspotSDK::ActionResponse::Status::TaggedSymbol)

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
