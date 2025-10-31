# typed: strong

module HubspotSDK
  module Resources
    class CRM
      sig { returns(HubspotSDK::Resources::CRM::AppUninstalls) }
      attr_reader :app_uninstalls

      sig { returns(HubspotSDK::Resources::CRM::Associations) }
      attr_reader :associations

      sig { returns(HubspotSDK::Resources::CRM::Exports) }
      attr_reader :exports

      sig { returns(HubspotSDK::Resources::CRM::Extensions) }
      attr_reader :extensions

      sig { returns(HubspotSDK::Resources::CRM::FeatureFlags) }
      attr_reader :feature_flags

      sig { returns(HubspotSDK::Resources::CRM::Imports) }
      attr_reader :imports

      sig { returns(HubspotSDK::Resources::CRM::Limits) }
      attr_reader :limits

      sig { returns(HubspotSDK::Resources::CRM::Lists) }
      attr_reader :lists

      sig { returns(HubspotSDK::Resources::CRM::ObjectLibrary) }
      attr_reader :object_library

      sig { returns(HubspotSDK::Resources::CRM::Objects) }
      attr_reader :objects

      sig { returns(HubspotSDK::Resources::CRM::Owners) }
      attr_reader :owners

      sig { returns(HubspotSDK::Resources::CRM::Pipelines) }
      attr_reader :pipelines

      sig { returns(HubspotSDK::Resources::CRM::Properties) }
      attr_reader :properties

      sig { returns(HubspotSDK::Resources::CRM::PropertyValidations) }
      attr_reader :property_validations

      sig { returns(HubspotSDK::Resources::CRM::Timeline) }
      attr_reader :timeline

      sig { returns(HubspotSDK::Resources::CRM::Users) }
      attr_reader :users

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
