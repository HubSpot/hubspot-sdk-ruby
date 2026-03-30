# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::Definitions#create
      class ExternalBehavioralEventTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute associations
        #
        #   @return [Array<HubspotSDK::Models::Events::AssociationDefinition>]
        required :associations,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::AssociationDefinition] }

        # @!attribute fully_qualified_name
        #
        #   @return [String]
        required :fully_qualified_name, String, api_name: :fullyQualifiedName

        # @!attribute labels
        #
        #   @return [HubspotSDK::Models::Events::BehavioralEventTypeDefinitionLabels]
        required :labels, -> { HubspotSDK::Events::BehavioralEventTypeDefinitionLabels }

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute properties
        #
        #   @return [Array<HubspotSDK::Models::Property>]
        required :properties, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property] }

        # @!attribute combo_event_rules
        #
        #   @return [HubspotSDK::Models::Events::ComboEventRuleBranch, nil]
        optional :combo_event_rules,
                 -> {
                   HubspotSDK::Events::ComboEventRuleBranch
                 },
                 api_name: :comboEventRules

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_user_id
        #
        #   @return [Integer, nil]
        optional :created_user_id, Integer, api_name: :createdUserId

        # @!attribute custom_matching_id
        #
        #   @return [HubspotSDK::Models::Events::ExternalObjectResolutionMappingResponse, nil]
        optional :custom_matching_id,
                 -> { HubspotSDK::Events::ExternalObjectResolutionMappingResponse },
                 api_name: :customMatchingId

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute primary_object
        #
        #   @return [String, nil]
        optional :primary_object, String, api_name: :primaryObject

        # @!attribute primary_object_id
        #
        #   @return [String, nil]
        optional :primary_object_id, String, api_name: :primaryObjectId

        # @!attribute tracking_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition::TrackingType, nil]
        optional :tracking_type,
                 enum: -> { HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType },
                 api_name: :trackingType

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_user_id
        #
        #   @return [Integer, nil]
        optional :updated_user_id, Integer, api_name: :updatedUserId

        # @!method initialize(id:, archived:, associations:, fully_qualified_name:, labels:, name:, object_type_id:, properties:, combo_event_rules: nil, created_at: nil, created_user_id: nil, custom_matching_id: nil, description: nil, primary_object: nil, primary_object_id: nil, tracking_type: nil, updated_at: nil, updated_user_id: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param associations [Array<HubspotSDK::Models::Events::AssociationDefinition>]
        #   @param fully_qualified_name [String]
        #   @param labels [HubspotSDK::Models::Events::BehavioralEventTypeDefinitionLabels]
        #   @param name [String]
        #   @param object_type_id [String]
        #   @param properties [Array<HubspotSDK::Models::Property>]
        #   @param combo_event_rules [HubspotSDK::Models::Events::ComboEventRuleBranch]
        #   @param created_at [Time]
        #   @param created_user_id [Integer]
        #   @param custom_matching_id [HubspotSDK::Models::Events::ExternalObjectResolutionMappingResponse]
        #   @param description [String]
        #   @param primary_object [String]
        #   @param primary_object_id [String]
        #   @param tracking_type [Symbol, HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition::TrackingType]
        #   @param updated_at [Time]
        #   @param updated_user_id [Integer]

        # @see HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition#tracking_type
        module TrackingType
          extend HubspotSDK::Internal::Type::Enum

          APP_EVENT = :APP_EVENT
          AUTOCAPTURE_EVENT = :AUTOCAPTURE_EVENT
          CLICKED_ELEMENT = :CLICKED_ELEMENT
          COMBO_EVENT = :COMBO_EVENT
          CUSTOM_SCRIPT = :CUSTOM_SCRIPT
          CUSTOM_SIGNAL = :CUSTOM_SIGNAL
          IMPORT = :IMPORT
          MANUAL = :MANUAL
          PROPERTY_CHANGE = :PROPERTY_CHANGE
          VISITED_URL = :VISITED_URL
          WEBHOOK = :WEBHOOK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
