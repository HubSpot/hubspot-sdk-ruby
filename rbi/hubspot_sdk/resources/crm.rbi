# typed: strong

module HubspotSDK
  module Resources
    class Crm
      sig { returns(HubspotSDK::Resources::Crm::AppUninstalls) }
      attr_reader :app_uninstalls

      sig { returns(HubspotSDK::Resources::Crm::Associations) }
      attr_reader :associations

      sig { returns(HubspotSDK::Resources::Crm::AssociationsSchema) }
      attr_reader :associations_schema

      sig { returns(HubspotSDK::Resources::Crm::DealSplits) }
      attr_reader :deal_splits

      sig { returns(HubspotSDK::Resources::Crm::Exports) }
      attr_reader :exports

      sig { returns(HubspotSDK::Resources::Crm::Extensions) }
      attr_reader :extensions

      sig { returns(HubspotSDK::Resources::Crm::Imports) }
      attr_reader :imports

      sig { returns(HubspotSDK::Resources::Crm::Limits) }
      attr_reader :limits

      sig { returns(HubspotSDK::Resources::Crm::Lists) }
      attr_reader :lists

      sig { returns(HubspotSDK::Resources::Crm::ObjectLibrary) }
      attr_reader :object_library

      sig { returns(HubspotSDK::Resources::Crm::ObjectSchemas) }
      attr_reader :object_schemas

      sig { returns(HubspotSDK::Resources::Crm::Objects) }
      attr_reader :objects

      sig { returns(HubspotSDK::Resources::Crm::Owners) }
      attr_reader :owners

      sig { returns(HubspotSDK::Resources::Crm::Pipelines) }
      attr_reader :pipelines

      sig { returns(HubspotSDK::Resources::Crm::Properties) }
      attr_reader :properties

      sig { returns(HubspotSDK::Resources::Crm::PropertiesValidations) }
      attr_reader :properties_validations

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
