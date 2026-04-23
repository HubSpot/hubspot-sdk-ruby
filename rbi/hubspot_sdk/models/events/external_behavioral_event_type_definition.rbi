# typed: strong

module HubSpotSDK
  module Models
    module Events
      class ExternalBehavioralEventTypeDefinition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig do
          returns(
            T::Array[HubSpotSDK::Events::DefinitionsAssociationDefinition]
          )
        end
        attr_accessor :associations

        sig { returns(String) }
        attr_accessor :fully_qualified_name

        sig { returns(HubSpotSDK::Events::BehavioralEventTypeDefinitionLabels) }
        attr_reader :labels

        sig do
          params(
            labels:
              HubSpotSDK::Events::BehavioralEventTypeDefinitionLabels::OrHash
          ).void
        end
        attr_writer :labels

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(T::Array[HubSpotSDK::BaseProperty]) }
        attr_accessor :properties

        sig { returns(T.nilable(HubSpotSDK::Events::ComboEventRuleBranch)) }
        attr_reader :combo_event_rules

        sig do
          params(
            combo_event_rules: HubSpotSDK::Events::ComboEventRuleBranch::OrHash
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
              HubSpotSDK::Events::ExternalObjectResolutionMappingResponse
            )
          )
        end
        attr_reader :custom_matching_id

        sig do
          params(
            custom_matching_id:
              HubSpotSDK::Events::ExternalObjectResolutionMappingResponse::OrHash
          ).void
        end
        attr_writer :custom_matching_id

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :detail_template

        sig { params(detail_template: String).void }
        attr_writer :detail_template

        sig { returns(T.nilable(String)) }
        attr_reader :header_template

        sig { params(header_template: String).void }
        attr_writer :header_template

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
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          )
        end
        attr_reader :tracking_type

        sig do
          params(
            tracking_type:
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::OrSymbol
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
              T::Array[
                HubSpotSDK::Events::DefinitionsAssociationDefinition::OrHash
              ],
            fully_qualified_name: String,
            labels:
              HubSpotSDK::Events::BehavioralEventTypeDefinitionLabels::OrHash,
            name: String,
            object_type_id: String,
            properties: T::Array[HubSpotSDK::BaseProperty::OrHash],
            combo_event_rules: HubSpotSDK::Events::ComboEventRuleBranch::OrHash,
            created_at: Time,
            created_user_id: Integer,
            custom_matching_id:
              HubSpotSDK::Events::ExternalObjectResolutionMappingResponse::OrHash,
            description: String,
            detail_template: String,
            header_template: String,
            primary_object: String,
            primary_object_id: String,
            tracking_type:
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::OrSymbol,
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
          detail_template: nil,
          header_template: nil,
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
              associations:
                T::Array[HubSpotSDK::Events::DefinitionsAssociationDefinition],
              fully_qualified_name: String,
              labels: HubSpotSDK::Events::BehavioralEventTypeDefinitionLabels,
              name: String,
              object_type_id: String,
              properties: T::Array[HubSpotSDK::BaseProperty],
              combo_event_rules: HubSpotSDK::Events::ComboEventRuleBranch,
              created_at: Time,
              created_user_id: Integer,
              custom_matching_id:
                HubSpotSDK::Events::ExternalObjectResolutionMappingResponse,
              description: String,
              detail_template: String,
              header_template: String,
              primary_object: String,
              primary_object_id: String,
              tracking_type:
                HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol,
              updated_at: Time,
              updated_user_id: Integer
            }
          )
        end
        def to_hash
        end

        module TrackingType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APP_EVENT =
            T.let(
              :APP_EVENT,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          AUTOCAPTURE_EVENT =
            T.let(
              :AUTOCAPTURE_EVENT,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          CLICKED_ELEMENT =
            T.let(
              :CLICKED_ELEMENT,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          COMBO_EVENT =
            T.let(
              :COMBO_EVENT,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          CUSTOM_SCRIPT =
            T.let(
              :CUSTOM_SCRIPT,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          CUSTOM_SIGNAL =
            T.let(
              :CUSTOM_SIGNAL,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          MANUAL =
            T.let(
              :MANUAL,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          PROPERTY_CHANGE =
            T.let(
              :PROPERTY_CHANGE,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          VISITED_URL =
            T.let(
              :VISITED_URL,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :WEBHOOK,
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType::TaggedSymbol
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
