# typed: strong

module HubspotSDK
  AbTestCreateRequestVNext = HubspotSDK::Models::AbTestCreateRequestVNext

  Account = HubspotSDK::Models::Account

  ActionResponse = HubspotSDK::Models::ActionResponse

  AssociationDefinition = HubspotSDK::Models::AssociationDefinition

  AssociationDefinitionEgg = HubspotSDK::Models::AssociationDefinitionEgg

  AssociationSpec = HubspotSDK::Models::AssociationSpec

  Auth = HubspotSDK::Models::Auth

  Automation = HubspotSDK::Models::Automation

  AutomationActionsOption = HubspotSDK::Models::AutomationActionsOption

  BatchInputPropertyCreate = HubspotSDK::Models::BatchInputPropertyCreate

  BatchInputPropertyName = HubspotSDK::Models::BatchInputPropertyName

  BatchInputPublicObjectID = HubspotSDK::Models::BatchInputPublicObjectID

  BatchInputString = HubspotSDK::Models::BatchInputString

  BatchResponseProperty = HubspotSDK::Models::BatchResponseProperty

  BusinessUnits = HubspotSDK::Models::BusinessUnits

  Cms = HubspotSDK::Models::Cms

  CollectionResponseObjectSchemaNoPaging =
    HubspotSDK::Models::CollectionResponseObjectSchemaNoPaging

  Conversations = HubspotSDK::Models::Conversations

  Crm = HubspotSDK::Models::Crm

  Error = HubspotSDK::Models::Error

  ErrorDetail = HubspotSDK::Models::ErrorDetail

  Events = HubspotSDK::Models::Events

  Files = HubspotSDK::Models::Files

  ForwardPaging = HubspotSDK::Models::ForwardPaging

  HubDBTableRowV3Wrapper =
    T.let(
      HubspotSDK::Models::HubDBTableRowV3Wrapper,
      HubspotSDK::Internal::Type::Converter
    )

  Marketing = HubspotSDK::Models::Marketing

  NextPage = HubspotSDK::Models::NextPage

  ObjectTypeDefinitionLabels = HubspotSDK::Models::ObjectTypeDefinitionLabels

  Option = HubspotSDK::Models::Option

  OptionInput = HubspotSDK::Models::OptionInput

  Paging = HubspotSDK::Models::Paging

  PreviousPage = HubspotSDK::Models::PreviousPage

  Property = HubspotSDK::Models::Property

  PropertyCreate = HubspotSDK::Models::PropertyCreate

  PropertyGroupCreate = HubspotSDK::Models::PropertyGroupCreate

  PropertyGroupUpdate = HubspotSDK::Models::PropertyGroupUpdate

  PropertyModificationMetadata =
    HubspotSDK::Models::PropertyModificationMetadata

  PropertyName = HubspotSDK::Models::PropertyName

  PublicAbsoluteComparativeTimestampRefineBy =
    HubspotSDK::Models::PublicAbsoluteComparativeTimestampRefineBy

  PublicAbsoluteRangedTimestampRefineBy =
    HubspotSDK::Models::PublicAbsoluteRangedTimestampRefineBy

  PublicAdsSearchFilter = HubspotSDK::Models::PublicAdsSearchFilter

  PublicAdsTimeFilter = HubspotSDK::Models::PublicAdsTimeFilter

  PublicAllHistoryRefineBy = HubspotSDK::Models::PublicAllHistoryRefineBy

  PublicAllPropertyTypesOperation =
    HubspotSDK::Models::PublicAllPropertyTypesOperation

  PublicAndFilterBranch = HubspotSDK::Models::PublicAndFilterBranch

  PublicAssociationFilterBranch =
    HubspotSDK::Models::PublicAssociationFilterBranch

  PublicAssociationInListFilter =
    HubspotSDK::Models::PublicAssociationInListFilter

  PublicBoolPropertyOperation = HubspotSDK::Models::PublicBoolPropertyOperation

  PublicCalendarDatePropertyOperation =
    HubspotSDK::Models::PublicCalendarDatePropertyOperation

  PublicCampaignInfluencedFilter =
    HubspotSDK::Models::PublicCampaignInfluencedFilter

  PublicCommunicationSubscriptionFilter =
    HubspotSDK::Models::PublicCommunicationSubscriptionFilter

  PublicComparativeDatePropertyOperation =
    HubspotSDK::Models::PublicComparativeDatePropertyOperation

  PublicComparativePropertyUpdatedOperation =
    HubspotSDK::Models::PublicComparativePropertyUpdatedOperation

  PublicConstantFilter = HubspotSDK::Models::PublicConstantFilter

  PublicCtaAnalyticsFilter = HubspotSDK::Models::PublicCtaAnalyticsFilter

  PublicDatePoint = HubspotSDK::Models::PublicDatePoint

  PublicDatePropertyOperation = HubspotSDK::Models::PublicDatePropertyOperation

  PublicDateTimePropertyOperation =
    HubspotSDK::Models::PublicDateTimePropertyOperation

  PublicEmailEventFilter = HubspotSDK::Models::PublicEmailEventFilter

  PublicEmailSubscriptionFilter =
    HubspotSDK::Models::PublicEmailSubscriptionFilter

  PublicEnumerationPropertyOperation =
    HubspotSDK::Models::PublicEnumerationPropertyOperation

  PublicEventAnalyticsFilter = HubspotSDK::Models::PublicEventAnalyticsFilter

  PublicEventFilterMetadata = HubspotSDK::Models::PublicEventFilterMetadata

  PublicFiscalQuarterReference =
    HubspotSDK::Models::PublicFiscalQuarterReference

  PublicFiscalYearReference = HubspotSDK::Models::PublicFiscalYearReference

  PublicFormSubmissionFilter = HubspotSDK::Models::PublicFormSubmissionFilter

  PublicFormSubmissionOnPageFilter =
    HubspotSDK::Models::PublicFormSubmissionOnPageFilter

  PublicIndexedTimePoint = HubspotSDK::Models::PublicIndexedTimePoint

  PublicIndexOffset = HubspotSDK::Models::PublicIndexOffset

  PublicInListFilter = HubspotSDK::Models::PublicInListFilter

  PublicInListFilterMetadata = HubspotSDK::Models::PublicInListFilterMetadata

  PublicIntegrationEventFilter =
    HubspotSDK::Models::PublicIntegrationEventFilter

  PublicMonthReference = HubspotSDK::Models::PublicMonthReference

  PublicMultiStringPropertyOperation =
    HubspotSDK::Models::PublicMultiStringPropertyOperation

  PublicNotAllFilterBranch = HubspotSDK::Models::PublicNotAllFilterBranch

  PublicNotAnyFilterBranch = HubspotSDK::Models::PublicNotAnyFilterBranch

  PublicNowReference = HubspotSDK::Models::PublicNowReference

  PublicNumAssociationsFilter = HubspotSDK::Models::PublicNumAssociationsFilter

  PublicNumberPropertyOperation =
    HubspotSDK::Models::PublicNumberPropertyOperation

  PublicNumOccurrencesRefineBy =
    HubspotSDK::Models::PublicNumOccurrencesRefineBy

  PublicObjectID = HubspotSDK::Models::PublicObjectID

  PublicOrFilterBranch = HubspotSDK::Models::PublicOrFilterBranch

  PublicPageViewAnalyticsFilter =
    HubspotSDK::Models::PublicPageViewAnalyticsFilter

  PublicPrivacyAnalyticsFilter =
    HubspotSDK::Models::PublicPrivacyAnalyticsFilter

  PublicPropertyAssociationFilterBranch =
    HubspotSDK::Models::PublicPropertyAssociationFilterBranch

  PublicPropertyAssociationInListFilter =
    HubspotSDK::Models::PublicPropertyAssociationInListFilter

  PublicPropertyFilter = HubspotSDK::Models::PublicPropertyFilter

  PublicPropertyReferencedTime =
    HubspotSDK::Models::PublicPropertyReferencedTime

  PublicQuarterReference = HubspotSDK::Models::PublicQuarterReference

  PublicRangedDatePropertyOperation =
    HubspotSDK::Models::PublicRangedDatePropertyOperation

  PublicRangedNumberPropertyOperation =
    HubspotSDK::Models::PublicRangedNumberPropertyOperation

  PublicRangedTimeOperation = HubspotSDK::Models::PublicRangedTimeOperation

  PublicRelativeComparativeTimestampRefineBy =
    HubspotSDK::Models::PublicRelativeComparativeTimestampRefineBy

  PublicRelativeRangedTimestampRefineBy =
    HubspotSDK::Models::PublicRelativeRangedTimestampRefineBy

  PublicRestrictedFilterBranch =
    HubspotSDK::Models::PublicRestrictedFilterBranch

  PublicRollingDateRangePropertyOperation =
    HubspotSDK::Models::PublicRollingDateRangePropertyOperation

  PublicRollingPropertyUpdatedOperation =
    HubspotSDK::Models::PublicRollingPropertyUpdatedOperation

  PublicSetOccurrencesRefineBy =
    HubspotSDK::Models::PublicSetOccurrencesRefineBy

  PublicStringPropertyOperation =
    HubspotSDK::Models::PublicStringPropertyOperation

  PublicSurveyMonkeyFilter = HubspotSDK::Models::PublicSurveyMonkeyFilter

  PublicSurveyMonkeyValueFilter =
    HubspotSDK::Models::PublicSurveyMonkeyValueFilter

  PublicTimeOffset = HubspotSDK::Models::PublicTimeOffset

  PublicTimePointOperation = HubspotSDK::Models::PublicTimePointOperation

  PublicTodayReference = HubspotSDK::Models::PublicTodayReference

  PublicUnifiedEventsFilter = HubspotSDK::Models::PublicUnifiedEventsFilter

  PublicUnifiedEventsFilterBranch =
    HubspotSDK::Models::PublicUnifiedEventsFilterBranch

  PublicWebinarFilter = HubspotSDK::Models::PublicWebinarFilter

  PublicWeekReference = HubspotSDK::Models::PublicWeekReference

  PublicYearReference = HubspotSDK::Models::PublicYearReference

  Scheduler = HubspotSDK::Models::Scheduler

  Settings = HubspotSDK::Models::Settings

  StandardError = HubspotSDK::Models::StandardError

  TaskLocator = HubspotSDK::Models::TaskLocator

  VersionUser = HubspotSDK::Models::VersionUser

  Webhooks = HubspotSDK::Models::Webhooks
end
