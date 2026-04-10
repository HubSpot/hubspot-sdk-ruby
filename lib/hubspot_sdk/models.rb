# frozen_string_literal: true

module HubSpotSDK
  [HubSpotSDK::Internal::Type::BaseModel, *HubSpotSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, HubSpotSDK::Internal::AnyHash) } }
  end

  HubSpotSDK::Internal::Util.walk_namespaces(HubSpotSDK::Models).each do |mod|
    case mod
    in HubSpotSDK::Internal::Type::Enum | HubSpotSDK::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  HubSpotSDK::Internal::Util.walk_namespaces(HubSpotSDK::Models)
                            .lazy
                            .grep(HubSpotSDK::Internal::Type::Union)
                            .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AbTestCreateRequestVNext = HubSpotSDK::Models::AbTestCreateRequestVNext

  Account = HubSpotSDK::Models::Account

  ActionResponse = HubSpotSDK::Models::ActionResponse

  AssociationDefinition = HubSpotSDK::Models::AssociationDefinition

  AssociationDefinitionEgg = HubSpotSDK::Models::AssociationDefinitionEgg

  AssociationSpec = HubSpotSDK::Models::AssociationSpec

  Auth = HubSpotSDK::Models::Auth

  Automation = HubSpotSDK::Models::Automation

  AutomationActionsOption = HubSpotSDK::Models::AutomationActionsOption

  BatchInputPropertyName = HubSpotSDK::Models::BatchInputPropertyName

  BatchInputPublicObjectID = HubSpotSDK::Models::BatchInputPublicObjectID

  BatchInputString = HubSpotSDK::Models::BatchInputString

  BatchReadInputPropertyName = HubSpotSDK::Models::BatchReadInputPropertyName

  BusinessUnits = HubSpotSDK::Models::BusinessUnits

  Cms = HubSpotSDK::Models::Cms

  CollectionResponsePropertyGroupNoPaging = HubSpotSDK::Models::CollectionResponsePropertyGroupNoPaging

  CommunicationPreferences = HubSpotSDK::Models::CommunicationPreferences

  Conversations = HubSpotSDK::Models::Conversations

  Crm = HubSpotSDK::Models::Crm

  Error = HubSpotSDK::Models::Error

  ErrorDetail = HubSpotSDK::Models::ErrorDetail

  Events = HubSpotSDK::Models::Events

  Files = HubSpotSDK::Models::Files

  ForwardPaging = HubSpotSDK::Models::ForwardPaging

  Marketing = HubSpotSDK::Models::Marketing

  Meta = HubSpotSDK::Models::Meta

  NextPage = HubSpotSDK::Models::NextPage

  ObjectTypeDefinition = HubSpotSDK::Models::ObjectTypeDefinition

  ObjectTypeDefinitionLabels = HubSpotSDK::Models::ObjectTypeDefinitionLabels

  ObjectTypeDefinitionPatch = HubSpotSDK::Models::ObjectTypeDefinitionPatch

  Option = HubSpotSDK::Models::Option

  OptionInput = HubSpotSDK::Models::OptionInput

  Paging = HubSpotSDK::Models::Paging

  PreviousPage = HubSpotSDK::Models::PreviousPage

  PropertyGroup = HubSpotSDK::Models::PropertyGroup

  PropertyGroupCreate = HubSpotSDK::Models::PropertyGroupCreate

  PropertyGroupUpdate = HubSpotSDK::Models::PropertyGroupUpdate

  PropertyModificationMetadata = HubSpotSDK::Models::PropertyModificationMetadata

  PropertyName = HubSpotSDK::Models::PropertyName

  PropertyValue = HubSpotSDK::Models::PropertyValue

  PublicObjectID = HubSpotSDK::Models::PublicObjectID

  Scheduler = HubSpotSDK::Models::Scheduler

  Settings = HubSpotSDK::Models::Settings

  StandardError = HubSpotSDK::Models::StandardError

  TaskLocator = HubSpotSDK::Models::TaskLocator

  VersionUser = HubSpotSDK::Models::VersionUser

  Webhooks = HubSpotSDK::Models::Webhooks
end
