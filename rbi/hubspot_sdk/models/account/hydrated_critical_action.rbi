# typed: strong

module HubspotSDK
  module Models
    module Account
      class HydratedCriticalAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::HydratedCriticalAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the activity.
        sig { returns(String) }
        attr_accessor :id

        # The time the activity took place.
        sig { returns(Time) }
        attr_accessor :created_at

        # The type of activity.
        sig do
          returns(
            HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The user's unique ID.
        sig { returns(Integer) }
        attr_accessor :user_id

        # Email address of the user associated with the activity.
        sig { returns(T.nilable(String)) }
        attr_reader :acting_user

        sig { params(acting_user: String).void }
        attr_writer :acting_user

        # The approximate country code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # A link to the URL where the action was taken in the account.
        sig { returns(T.nilable(String)) }
        attr_reader :info_url

        sig { params(info_url: String).void }
        attr_writer :info_url

        # IP address where the activity originated.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        # The approximate location where the activity took place.
        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        # The ID of the affected object.
        sig { returns(T.nilable(String)) }
        attr_reader :object_id_

        sig { params(object_id_: String).void }
        attr_writer :object_id_

        # The approximate region code.
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        sig do
          params(
            id: String,
            created_at: Time,
            type: HubspotSDK::Account::HydratedCriticalAction::Type::OrSymbol,
            user_id: Integer,
            acting_user: String,
            country_code: String,
            info_url: String,
            ip_address: String,
            location: String,
            object_id_: String,
            region_code: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the activity.
          id:,
          # The time the activity took place.
          created_at:,
          # The type of activity.
          type:,
          # The user's unique ID.
          user_id:,
          # Email address of the user associated with the activity.
          acting_user: nil,
          # The approximate country code.
          country_code: nil,
          # A link to the URL where the action was taken in the account.
          info_url: nil,
          # IP address where the activity originated.
          ip_address: nil,
          # The approximate location where the activity took place.
          location: nil,
          # The ID of the affected object.
          object_id_: nil,
          # The approximate region code.
          region_code: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              type:
                HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol,
              user_id: Integer,
              acting_user: String,
              country_code: String,
              info_url: String,
              ip_address: String,
              location: String,
              object_id_: String,
              region_code: String
            }
          )
        end
        def to_hash
        end

        # The type of activity.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Account::HydratedCriticalAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ACCOUNT_ADDED_TO_MULTI_ACCOUNT_ORGANIZATION =
            T.let(
              :ACCOUNT_ADDED_TO_MULTI_ACCOUNT_ORGANIZATION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ACCOUNT_REMOVED_FROM_MULTI_ACCOUNT_ORGANIZATION =
            T.let(
              :ACCOUNT_REMOVED_FROM_MULTI_ACCOUNT_ORGANIZATION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_ADMIN_PERMISSIONS =
            T.let(
              :ADD_ADMIN_PERMISSIONS,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_ADMIN_USER =
            T.let(
              :ADD_ADMIN_USER,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_SINGLE_SIGN_ON =
            T.let(
              :ADD_SINGLE_SIGN_ON,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_TWO_FACTOR_AUTHENTICATION =
            T.let(
              :ADD_TWO_FACTOR_AUTHENTICATION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_USER =
            T.let(
              :ADD_USER,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ADD_WEBHOOK_IN_WORKFLOW =
            T.let(
              :ADD_WEBHOOK_IN_WORKFLOW,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ALLOWED_GEOLOCATIONS_DISABLED =
            T.let(
              :ALLOWED_GEOLOCATIONS_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ALLOWED_GEOLOCATIONS_ENABLED =
            T.let(
              :ALLOWED_GEOLOCATIONS_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ALLOWED_LOGIN_METHODS_DELETE =
            T.let(
              :ALLOWED_LOGIN_METHODS_DELETE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ALLOWED_LOGIN_METHODS_UPDATE =
            T.let(
              :ALLOWED_LOGIN_METHODS_UPDATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ATTACHMENT_LOGGING_DISABLED =
            T.let(
              :ATTACHMENT_LOGGING_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          ATTACHMENT_LOGGING_ENABLED =
            T.let(
              :ATTACHMENT_LOGGING_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          AUTOMATED_INACTIVE_USER_DEACTIVATION_DISABLED =
            T.let(
              :AUTOMATED_INACTIVE_USER_DEACTIVATION_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          AUTOMATED_INACTIVE_USER_DEACTIVATION_ENABLED =
            T.let(
              :AUTOMATED_INACTIVE_USER_DEACTIVATION_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          BOTS_WEBHOOK_POST =
            T.let(
              :BOTS_WEBHOOK_POST,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          BOTS_WEBHOOK_UPDATE =
            T.let(
              :BOTS_WEBHOOK_UPDATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          BOTS_WEBHOOK_VIEWED =
            T.let(
              :BOTS_WEBHOOK_VIEWED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          BULK_EMAIL_DOMAIN_CHANGE =
            T.let(
              :BULK_EMAIL_DOMAIN_CHANGE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          CHANGE_AD_EVENT_CONSENT_SETTING =
            T.let(
              :CHANGE_AD_EVENT_CONSENT_SETTING,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          CHANGE_AD_EVENT_DATA_SHARING_SETTING =
            T.let(
              :CHANGE_AD_EVENT_DATA_SHARING_SETTING,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          CHANGE_PASSWORD =
            T.let(
              :CHANGE_PASSWORD,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          CONTACT_DATA_EXPORT =
            T.let(
              :CONTACT_DATA_EXPORT,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_ACCESS_REQUEST_SUBMITTED =
            T.let(
              :DATA_ACCESS_REQUEST_SUBMITTED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_CREATED =
            T.let(
              :DATA_BACKUP_CREATED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_DOWNLOADED =
            T.let(
              :DATA_BACKUP_DOWNLOADED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_SCHEDULE_CREATED =
            T.let(
              :DATA_BACKUP_SCHEDULE_CREATED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_SCHEDULE_DELETED =
            T.let(
              :DATA_BACKUP_SCHEDULE_DELETED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_BACKUP_SCHEDULE_UPDATED =
            T.let(
              :DATA_BACKUP_SCHEDULE_UPDATED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_RESTORE_COMPLETED =
            T.let(
              :DATA_RESTORE_COMPLETED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_SHARING_CONNECTION_ADDED =
            T.let(
              :DATA_SHARING_CONNECTION_ADDED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATA_SHARING_CONNECTION_REMOVED =
            T.let(
              :DATA_SHARING_CONNECTION_REMOVED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DATASET_SYNC =
            T.let(
              :DATASET_SYNC,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DEACTIVATE_USER =
            T.let(
              :DEACTIVATE_USER,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DOMAIN_BASED_INVITE_CREATED =
            T.let(
              :DOMAIN_BASED_INVITE_CREATED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DOMAIN_BASED_INVITE_REMOVED =
            T.let(
              :DOMAIN_BASED_INVITE_REMOVED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DOMAIN_BASED_INVITES_DISABLED =
            T.let(
              :DOMAIN_BASED_INVITES_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          DOMAIN_BASED_INVITES_ENABLED =
            T.let(
              :DOMAIN_BASED_INVITES_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EMAIL_TRACKING_DISABLED =
            T.let(
              :EMAIL_TRACKING_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EMAIL_TRACKING_ENABLED =
            T.let(
              :EMAIL_TRACKING_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EXPORT_APPROVAL =
            T.let(
              :EXPORT_APPROVAL,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EXPORT_DOWNLOAD =
            T.let(
              :EXPORT_DOWNLOAD,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          EXPORT_USERS =
            T.let(
              :EXPORT_USERS,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          FORM_SUBMISSIONS_EXPORT =
            T.let(
              :FORM_SUBMISSIONS_EXPORT,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          GDPR_DELETE =
            T.let(
              :GDPR_DELETE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          GDPR_TOGGLE_DISABLED =
            T.let(
              :GDPR_TOGGLE_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          GDPR_TOGGLE_ENABLED =
            T.let(
              :GDPR_TOGGLE_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HAPIKEY_CREATE =
            T.let(
              :HAPIKEY_CREATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HAPIKEY_DEACTIVATE =
            T.let(
              :HAPIKEY_DEACTIVATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HAPIKEY_VIEW =
            T.let(
              :HAPIKEY_VIEW,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HUBSPOT_EMPLOYEE_ACCESS_DISABLED =
            T.let(
              :HUBSPOT_EMPLOYEE_ACCESS_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          HUBSPOT_EMPLOYEE_ACCESS_ENABLED =
            T.let(
              :HUBSPOT_EMPLOYEE_ACCESS_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          IMPERSONATE_USER =
            T.let(
              :IMPERSONATE_USER,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          INSTALL_INTEGRATION =
            T.let(
              :INSTALL_INTEGRATION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          IP_RESTRICTIONS_DISABLED =
            T.let(
              :IP_RESTRICTIONS_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          IP_RESTRICTIONS_ENABLED =
            T.let(
              :IP_RESTRICTIONS_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          JOINED_PORTAL_VIA_DOMAIN_BASED_INVITE =
            T.let(
              :JOINED_PORTAL_VIA_DOMAIN_BASED_INVITE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          LEGAL_BASIS_REQUIREMENT_DISABLED =
            T.let(
              :LEGAL_BASIS_REQUIREMENT_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          LEGAL_BASIS_REQUIREMENT_ENABLED =
            T.let(
              :LEGAL_BASIS_REQUIREMENT_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MANUAL_PASSWORD_RESET_EMAIL_SEND =
            T.let(
              :MANUAL_PASSWORD_RESET_EMAIL_SEND,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MANUAL_REGISTRATION_EMAIL_SEND =
            T.let(
              :MANUAL_REGISTRATION_EMAIL_SEND,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MARKETING_CONTACTS_APP_SETTINGS_DISABLED =
            T.let(
              :MARKETING_CONTACTS_APP_SETTINGS_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MARKETING_CONTACTS_APP_SETTINGS_ENABLED =
            T.let(
              :MARKETING_CONTACTS_APP_SETTINGS_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MERGE_REVERT =
            T.let(
              :MERGE_REVERT,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MODIFY_WEBHOOK_IN_WORKFLOW =
            T.let(
              :MODIFY_WEBHOOK_IN_WORKFLOW,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MULTI_ACCOUNT_REPORTING_CONNECTION_ADDED =
            T.let(
              :MULTI_ACCOUNT_REPORTING_CONNECTION_ADDED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MULTI_ACCOUNT_REPORTING_CONNECTION_REMOVED =
            T.let(
              :MULTI_ACCOUNT_REPORTING_CONNECTION_REMOVED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MULTI_ACCOUNT_WORKFLOWS_CONNECTION_ADDED =
            T.let(
              :MULTI_ACCOUNT_WORKFLOWS_CONNECTION_ADDED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          MULTI_ACCOUNT_WORKFLOWS_CONNECTION_REMOVED =
            T.let(
              :MULTI_ACCOUNT_WORKFLOWS_CONNECTION_REMOVED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          NEVER_LOG_FOR_PORTAL_ADDITION =
            T.let(
              :NEVER_LOG_FOR_PORTAL_ADDITION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          NEVER_LOG_FOR_PORTAL_DELETION =
            T.let(
              :NEVER_LOG_FOR_PORTAL_DELETION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          NEVER_LOG_FOR_USER_ADDITION =
            T.let(
              :NEVER_LOG_FOR_USER_ADDITION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          NEVER_LOG_FOR_USER_DELETION =
            T.let(
              :NEVER_LOG_FOR_USER_DELETION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PASSKEY_ADDED =
            T.let(
              :PASSKEY_ADDED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PASSKEY_DELETED =
            T.let(
              :PASSKEY_DELETED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PAYMENT_ACCOUNT_CREATION =
            T.let(
              :PAYMENT_ACCOUNT_CREATION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PAYMENT_ACCOUNT_INFO_UPDATE =
            T.let(
              :PAYMENT_ACCOUNT_INFO_UPDATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PAYMENT_BANK_ACCOUNT_CHANGE =
            T.let(
              :PAYMENT_BANK_ACCOUNT_CHANGE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PAYMENT_ONBOARDING_LINK_SEND =
            T.let(
              :PAYMENT_ONBOARDING_LINK_SEND,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PERSONAL_ACCESS_KEY_CREATE =
            T.let(
              :PERSONAL_ACCESS_KEY_CREATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PERSONAL_ACCESS_KEY_DEACTIVATE =
            T.let(
              :PERSONAL_ACCESS_KEY_DEACTIVATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PERSONAL_ACCESS_KEY_ROTATE =
            T.let(
              :PERSONAL_ACCESS_KEY_ROTATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PERSONAL_ACCESS_KEY_VIEW =
            T.let(
              :PERSONAL_ACCESS_KEY_VIEW,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_ACCESS_TOKEN_CREATE =
            T.let(
              :PRIVATE_APP_ACCESS_TOKEN_CREATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_ACCESS_TOKEN_DEACTIVATE =
            T.let(
              :PRIVATE_APP_ACCESS_TOKEN_DEACTIVATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_ACCESS_TOKEN_ROTATE =
            T.let(
              :PRIVATE_APP_ACCESS_TOKEN_ROTATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_ACCESS_TOKEN_VIEW =
            T.let(
              :PRIVATE_APP_ACCESS_TOKEN_VIEW,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_CLIENT_SECRET_VIEW =
            T.let(
              :PRIVATE_APP_CLIENT_SECRET_VIEW,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_CLIENT_SECRET_WRITE =
            T.let(
              :PRIVATE_APP_CLIENT_SECRET_WRITE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRIVATE_APP_SCOPE_GROUPS_UPDATE =
            T.let(
              :PRIVATE_APP_SCOPE_GROUPS_UPDATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PRODUCTION_DEPLOYMENT =
            T.let(
              :PRODUCTION_DEPLOYMENT,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PROPERTY_HISTORY_REVISION =
            T.let(
              :PROPERTY_HISTORY_REVISION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PUBLIC_APP_CLIENT_SECRET_VIEW =
            T.let(
              :PUBLIC_APP_CLIENT_SECRET_VIEW,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          PUBLIC_APP_CLIENT_SECRET_WRITE =
            T.let(
              :PUBLIC_APP_CLIENT_SECRET_WRITE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REACTIVATE_USER =
            T.let(
              :REACTIVATE_USER,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_ADMIN_PERMISSIONS =
            T.let(
              :REMOVE_ADMIN_PERMISSIONS,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_ADMIN_USER =
            T.let(
              :REMOVE_ADMIN_USER,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_SINGLE_SIGN_ON =
            T.let(
              :REMOVE_SINGLE_SIGN_ON,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_TWO_FACTOR_AUTHENTICATION =
            T.let(
              :REMOVE_TWO_FACTOR_AUTHENTICATION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REMOVE_USER =
            T.let(
              :REMOVE_USER,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          REQUIRE_SINGLE_SIGN_ON =
            T.let(
              :REQUIRE_SINGLE_SIGN_ON,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          RESTRICTED_LIST_ADDED_TO_CONTENT =
            T.let(
              :RESTRICTED_LIST_ADDED_TO_CONTENT,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SANDBOX_CREATION =
            T.let(
              :SANDBOX_CREATION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SANDBOX_DELETION =
            T.let(
              :SANDBOX_DELETION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SANDBOX_SYNC =
            T.let(
              :SANDBOX_SYNC,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SANDBOX_SYNC_TO_PRODUCTION =
            T.let(
              :SANDBOX_SYNC_TO_PRODUCTION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SECRET_ADDED_TO_SERVERLESS_FUNCTION =
            T.let(
              :SECRET_ADDED_TO_SERVERLESS_FUNCTION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SENSITIVE_DATA_DISABLED =
            T.let(
              :SENSITIVE_DATA_DISABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SENSITIVE_DATA_ENABLED =
            T.let(
              :SENSITIVE_DATA_ENABLED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_CLONED =
            T.let(
              :SEQUENCE_CLONED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_CREATED =
            T.let(
              :SEQUENCE_CREATED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT_INITIATED =
            T.let(
              :SEQUENCE_ENROLLMENT_INITIATED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT_STATE_CHANGED =
            T.let(
              :SEQUENCE_ENROLLMENT_STATE_CHANGED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SEQUENCE_MODIFIED =
            T.let(
              :SEQUENCE_MODIFIED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_CREATE =
            T.let(
              :SERVICE_KEY_CREATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_DEACTIVATE =
            T.let(
              :SERVICE_KEY_DEACTIVATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_PERMISSIONS_UPDATE =
            T.let(
              :SERVICE_KEY_PERMISSIONS_UPDATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_REVEAL =
            T.let(
              :SERVICE_KEY_REVEAL,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SERVICE_KEY_ROTATE =
            T.let(
              :SERVICE_KEY_ROTATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SMTP_TOKEN_CREATED =
            T.let(
              :SMTP_TOKEN_CREATED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SMTP_TOKEN_DELETED =
            T.let(
              :SMTP_TOKEN_DELETED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SMTP_TOKEN_PASSWORD_RESET =
            T.let(
              :SMTP_TOKEN_PASSWORD_RESET,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          SMTP_TOKEN_RETRIEVED =
            T.let(
              :SMTP_TOKEN_RETRIEVED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEAM_ADDED =
            T.let(
              :TEAM_ADDED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEAM_DELETED =
            T.let(
              :TEAM_DELETED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEAM_USER_ADDED =
            T.let(
              :TEAM_USER_ADDED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEAM_USER_DELETED =
            T.let(
              :TEAM_USER_DELETED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TEMPLATE_MODIFIED =
            T.let(
              :TEMPLATE_MODIFIED,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          TOUCHLESS_PURCHASE =
            T.let(
              :TOUCHLESS_PURCHASE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          UNIFIED_RESTORE_UNDO_EXECUTION =
            T.let(
              :UNIFIED_RESTORE_UNDO_EXECUTION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          UNINSTALL_INTEGRATION =
            T.let(
              :UNINSTALL_INTEGRATION,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          UNREQUIRE_SINGLE_SIGN_ON =
            T.let(
              :UNREQUIRE_SINGLE_SIGN_ON,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          WEBHOOK_SETTINGS_UPDATE =
            T.let(
              :WEBHOOK_SETTINGS_UPDATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          WEBHOOK_SUBSCRIPTION_CREATE =
            T.let(
              :WEBHOOK_SUBSCRIPTION_CREATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )
          WEBHOOK_SUBSCRIPTION_UPDATE =
            T.let(
              :WEBHOOK_SUBSCRIPTION_UPDATE,
              HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Account::HydratedCriticalAction::Type::TaggedSymbol
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
