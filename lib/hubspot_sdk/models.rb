# frozen_string_literal: true

module HubspotSDK
  [HubspotSDK::Internal::Type::BaseModel, *HubspotSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, HubspotSDK::Internal::AnyHash) } }
  end

  HubspotSDK::Internal::Util.walk_namespaces(HubspotSDK::Models).each do |mod|
    case mod
    in HubspotSDK::Internal::Type::Enum | HubspotSDK::Internal::Type::Union
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

  HubspotSDK::Internal::Util.walk_namespaces(HubspotSDK::Models)
                            .lazy
                            .grep(HubspotSDK::Internal::Type::Union)
                            .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Account = HubspotSDK::Models::Account

  AssociationSpec = HubspotSDK::Models::AssociationSpec

  Automation = HubspotSDK::Models::Automation

  Cms = HubspotSDK::Models::Cms

  Crm = HubspotSDK::Models::Crm

  DataStudio = HubspotSDK::Models::DataStudio

  Error = HubspotSDK::Models::Error

  ErrorDetail = HubspotSDK::Models::ErrorDetail

  Events = HubspotSDK::Models::Events

  Files = HubspotSDK::Models::Files

  ForwardPaging = HubspotSDK::Models::ForwardPaging

  Marketing = HubspotSDK::Models::Marketing

  Meta = HubspotSDK::Models::Meta

  NextPage = HubspotSDK::Models::NextPage

  Paging = HubspotSDK::Models::Paging

  PreviousPage = HubspotSDK::Models::PreviousPage

  PublicObjectID = HubspotSDK::Models::PublicObjectID

  Scheduler = HubspotSDK::Models::Scheduler

  Settings = HubspotSDK::Models::Settings

  StandardError = HubspotSDK::Models::StandardError
end
