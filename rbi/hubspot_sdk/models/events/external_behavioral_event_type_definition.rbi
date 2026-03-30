# typed: strong

module HubspotSDK
  module Models
    module Events
      class ExternalBehavioralEventTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(T::Array[HubspotSDK::Events::AssociationDefinition]) }
        attr_accessor :associations

        sig { returns(String) }
        attr_accessor :fully_qualified_name

        sig { returns(HubspotSDK::Events::BehavioralEventTypeDefinitionLabels) }
        attr_reader :labels

        sig do
          params(
            labels:
              HubspotSDK::Events::BehavioralEventTypeDefinitionLabels::OrHash
          ).void
        end
        attr_writer :labels

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(T::Array[HubspotSDK::Property]) }
        attr_accessor :properties

        sig { returns(T.nilable(HubspotSDK::Events::ComboEventRuleBranch)) }
        attr_reader :combo_event_rules

        sig do
          params(
            combo_event_rules: HubspotSDK::Events::ComboEventRuleBranch::OrHash
          ).void
        end
        attr_writer :combo_event_rules

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_user_id

        sig { params(created_user_id: Integer).void }
        attr_writer :created_user_id

        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::ExternalObjectResolutionMappingResponse
            )
          )
        end
        attr_reader :custom_matching_id

        sig do
          params(
            custom_matching_id:
              HubspotSDK::Events::ExternalObjectResolutionMappingResponse::OrHash
          ).void
        end
        attr_writer :custom_matching_id

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :primary_object

        sig { params(primary_object: String).void }
        attr_writer :primary_object

        sig { returns(T.nilable(String)) }
        attr_reader :primary_object_id

        sig { params(primary_object_id: String).void }
        attr_writer :primary_object_id

        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          )
        end
        attr_reader :tracking_type

        sig do
          params(
            tracking_type:
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::OrSymbol
          ).void
        end
        attr_writer :tracking_type

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_user_id

        sig { params(updated_user_id: Integer).void }
        attr_writer :updated_user_id

        sig do
          params(
            id: String,
            archived: T::Boolean,
            associations:
              T::Array[HubspotSDK::Events::AssociationDefinition::OrHash],
            fully_qualified_name: String,
            labels:
              HubspotSDK::Events::BehavioralEventTypeDefinitionLabels::OrHash,
            name: String,
            object_type_id: String,
            properties: T::Array[HubspotSDK::Property::OrHash],
            combo_event_rules: HubspotSDK::Events::ComboEventRuleBranch::OrHash,
            created_at: Time,
            created_user_id: Integer,
            custom_matching_id:
              HubspotSDK::Events::ExternalObjectResolutionMappingResponse::OrHash,
            description: String,
            primary_object: String,
            primary_object_id: String,
            tracking_type:
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::OrSymbol,
            updated_at: Time,
            updated_user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          archived:,
          associations:,
          fully_qualified_name:,
          labels:,
          name:,
          object_type_id:,
          properties:,
          combo_event_rules: nil,
          created_at: nil,
          created_user_id: nil,
          custom_matching_id: nil,
          description: nil,
          primary_object: nil,
          primary_object_id: nil,
          tracking_type: nil,
          updated_at: nil,
          updated_user_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              associations: T::Array[HubspotSDK::Events::AssociationDefinition],
              fully_qualified_name: String,
              labels: HubspotSDK::Events::BehavioralEventTypeDefinitionLabels,
              name: String,
              object_type_id: String,
              properties: T::Array[HubspotSDK::Property],
              combo_event_rules: HubspotSDK::Events::ComboEventRuleBranch,
              created_at: Time,
              created_user_id: Integer,
              custom_matching_id:
                HubspotSDK::Events::ExternalObjectResolutionMappingResponse,
              description: String,
              primary_object: String,
              primary_object_id: String,
              tracking_type:
                HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol,
              updated_at: Time,
              updated_user_id: Integer
            }
          )
        end
        def to_hash
        end

        module TrackingType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APP_EVENT =
            T.let(
              :APP_EVENT,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          AUTOCAPTURE_EVENT =
            T.let(
              :AUTOCAPTURE_EVENT,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          CLICKED_ELEMENT =
            T.let(
              :CLICKED_ELEMENT,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          COMBO_EVENT =
            T.let(
              :COMBO_EVENT,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          CUSTOM_SCRIPT =
            T.let(
              :CUSTOM_SCRIPT,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          CUSTOM_SIGNAL =
            T.let(
              :CUSTOM_SIGNAL,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          MANUAL =
            T.let(
              :MANUAL,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          PROPERTY_CHANGE =
            T.let(
              :PROPERTY_CHANGE,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          VISITED_URL =
            T.let(
              :VISITED_URL,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :WEBHOOK,
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
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
