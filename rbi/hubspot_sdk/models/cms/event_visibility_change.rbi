# typed: strong

module HubspotSDK
  module Models
    module Cms
      class EventVisibilityChange < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::EventVisibilityChange,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Cms::EventVisibilityChange::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        sig { returns(Integer) }
        attr_accessor :updated_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_in_reporting

        sig { params(show_in_reporting: T::Boolean).void }
        attr_writer :show_in_reporting

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_in_timeline

        sig { params(show_in_timeline: T::Boolean).void }
        attr_writer :show_in_timeline

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_in_workflows

        sig { params(show_in_workflows: T::Boolean).void }
        attr_writer :show_in_workflows

        sig do
          params(
            event_type:
              HubspotSDK::Cms::EventVisibilityChange::EventType::OrSymbol,
            updated_at: Integer,
            show_in_reporting: T::Boolean,
            show_in_timeline: T::Boolean,
            show_in_workflows: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          event_type:,
          updated_at:,
          show_in_reporting: nil,
          show_in_timeline: nil,
          show_in_workflows: nil
        )
        end

        sig do
          override.returns(
            {
              event_type:
                HubspotSDK::Cms::EventVisibilityChange::EventType::TaggedSymbol,
              updated_at: Integer,
              show_in_reporting: T::Boolean,
              show_in_timeline: T::Boolean,
              show_in_workflows: T::Boolean
            }
          )
        end
        def to_hash
        end

        module EventType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::EventVisibilityChange::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              HubspotSDK::Cms::EventVisibilityChange::EventType::TaggedSymbol
            )
          MEDIA_PLAYS =
            T.let(
              :MEDIA_PLAYS,
              HubspotSDK::Cms::EventVisibilityChange::EventType::TaggedSymbol
            )
          MEDIA_PLAYS_PERCENT =
            T.let(
              :MEDIA_PLAYS_PERCENT,
              HubspotSDK::Cms::EventVisibilityChange::EventType::TaggedSymbol
            )
          ATTENTION_SPAN =
            T.let(
              :ATTENTION_SPAN,
              HubspotSDK::Cms::EventVisibilityChange::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::EventVisibilityChange::EventType::TaggedSymbol
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
