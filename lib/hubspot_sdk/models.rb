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

  ActionOverrideRequest = HubSpotSDK::Models::ActionOverrideRequest

  ActionResponse = HubSpotSDK::Models::ActionResponse

  AppLifecycleEventSubscriptionUpsertRequest =
    HubSpotSDK::Models::AppLifecycleEventSubscriptionUpsertRequest

  AssociationDefinition = HubSpotSDK::Models::AssociationDefinition

  AssociationDefinitionEgg = HubSpotSDK::Models::AssociationDefinitionEgg

  AssociationSpec = HubSpotSDK::Models::AssociationSpec

  AssociationSubscriptionUpsertRequest = HubSpotSDK::Models::AssociationSubscriptionUpsertRequest

  Auth = HubSpotSDK::Models::Auth

  Automation = HubSpotSDK::Models::Automation

  AutomationActionsOption = HubSpotSDK::Models::AutomationActionsOption

  BatchInputPropertyCreate = HubSpotSDK::Models::BatchInputPropertyCreate

  BatchInputPropertyName = HubSpotSDK::Models::BatchInputPropertyName

  BatchInputPublicObjectID = HubSpotSDK::Models::BatchInputPublicObjectID

  BatchInputString = HubSpotSDK::Models::BatchInputString

  BatchReadInputPropertyName = HubSpotSDK::Models::BatchReadInputPropertyName

  BatchResponseJournalFetchResponse = HubSpotSDK::Models::BatchResponseJournalFetchResponse

  BatchResponseJournalFetchResponseWithErrors =
    HubSpotSDK::Models::BatchResponseJournalFetchResponseWithErrors

  BusinessUnits = HubSpotSDK::Models::BusinessUnits

  Cms = HubSpotSDK::Models::Cms

  CollectionResponsePropertyGroupNoPaging = HubSpotSDK::Models::CollectionResponsePropertyGroupNoPaging

  CommunicationPreferences = HubSpotSDK::Models::CommunicationPreferences

  Condition = HubSpotSDK::Models::Condition

  Conversations = HubSpotSDK::Models::Conversations

  Crm = HubSpotSDK::Models::Crm

  CrmObjectSnapshotBatchRequest = HubSpotSDK::Models::CrmObjectSnapshotBatchRequest

  CrmObjectSnapshotBatchResponse = HubSpotSDK::Models::CrmObjectSnapshotBatchResponse

  CrmObjectSnapshotRequest = HubSpotSDK::Models::CrmObjectSnapshotRequest

  CrmObjectSnapshotResponse = HubSpotSDK::Models::CrmObjectSnapshotResponse

  ErrorData = HubSpotSDK::Models::ErrorData

  ErrorDetail = HubSpotSDK::Models::ErrorDetail

  Events = HubSpotSDK::Models::Events

  Files = HubSpotSDK::Models::Files

  Filter = HubSpotSDK::Models::Filter

  FilterCreateRequest = HubSpotSDK::Models::FilterCreateRequest

  FilterCreateResponse = HubSpotSDK::Models::FilterCreateResponse

  FilterResponse = HubSpotSDK::Models::FilterResponse

  ForwardPaging = HubSpotSDK::Models::ForwardPaging

  GdprPrivacyDeletionSubscriptionUpsertRequest =
    HubSpotSDK::Models::GdprPrivacyDeletionSubscriptionUpsertRequest

  JournalFetchResponse = HubSpotSDK::Models::JournalFetchResponse

  ListMembershipSubscriptionUpsertRequest = HubSpotSDK::Models::ListMembershipSubscriptionUpsertRequest

  Marketing = HubSpotSDK::Models::Marketing

  Meta = HubSpotSDK::Models::Meta

  NextPage = HubSpotSDK::Models::NextPage

  ObjectSubscriptionUpsertRequest = HubSpotSDK::Models::ObjectSubscriptionUpsertRequest

  ObjectTypeDefinition = HubSpotSDK::Models::ObjectTypeDefinition

  ObjectTypeDefinitionLabels = HubSpotSDK::Models::ObjectTypeDefinitionLabels

  ObjectTypeDefinitionPatch = HubSpotSDK::Models::ObjectTypeDefinitionPatch

  Option = HubSpotSDK::Models::Option

  OptionInput = HubSpotSDK::Models::OptionInput

  Paging = HubSpotSDK::Models::Paging

  PreviousPage = HubSpotSDK::Models::PreviousPage

  Property = HubSpotSDK::Models::Property

  PropertyCreate = HubSpotSDK::Models::PropertyCreate

  PropertyGroup = HubSpotSDK::Models::PropertyGroup

  PropertyGroupCreate = HubSpotSDK::Models::PropertyGroupCreate

  PropertyGroupUpdate = HubSpotSDK::Models::PropertyGroupUpdate

  PropertyModificationMetadata = HubSpotSDK::Models::PropertyModificationMetadata

  PropertyName = HubSpotSDK::Models::PropertyName

  PropertyValue = HubSpotSDK::Models::PropertyValue

  PublicObjectID = HubSpotSDK::Models::PublicObjectID

  Scheduler = HubSpotSDK::Models::Scheduler

  Settings = HubSpotSDK::Models::Settings

  SnapshotStatusResponse = HubSpotSDK::Models::SnapshotStatusResponse

  StandardError = HubSpotSDK::Models::StandardError

  SubscriptionUpsertRequest = HubSpotSDK::Models::SubscriptionUpsertRequest

  TaskLocator = HubSpotSDK::Models::TaskLocator

  VersionUser = HubSpotSDK::Models::VersionUser

  Webhooks = HubSpotSDK::Models::Webhooks

  WebhooksJournal = HubSpotSDK::Models::WebhooksJournal
end
