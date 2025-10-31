# typed: strong

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        class IntegratorSettingCreateObjectDefinitionResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Hash[
                Symbol,
                HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject
              ]
            )
          end
          attr_accessor :created_objects

          sig do
            params(
              created_objects:
                T::Hash[
                  Symbol,
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(created_objects:)
          end

          sig do
            override.returns(
              {
                created_objects:
                  T::Hash[
                    Symbol,
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject
                  ]
              }
            )
          end
          def to_hash
          end

          class CreatedObject < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType
              )
            end
            attr_reader :object_type

            sig do
              params(
                object_type:
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::OrHash
              ).void
            end
            attr_writer :object_type

            sig do
              returns(
                T::Array[
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property
                ]
              )
            end
            attr_accessor :properties

            sig do
              returns(
                T::Array[
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::PropertyGroup
                ]
              )
            end
            attr_accessor :property_groups

            sig do
              params(
                object_type:
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::OrHash,
                properties:
                  T::Array[
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::OrHash
                  ],
                property_groups:
                  T::Array[
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::PropertyGroup::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(object_type:, properties:, property_groups:)
            end

            sig do
              override.returns(
                {
                  object_type:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType,
                  properties:
                    T::Array[
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property
                    ],
                  property_groups:
                    T::Array[
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::PropertyGroup
                    ]
                }
              )
            end
            def to_hash
            end

            class ObjectType < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              sig { returns(T::Boolean) }
              attr_accessor :allows_sensitive_properties

              sig { returns(String) }
              attr_accessor :create_date_property_name

              sig { returns(T::Array[String]) }
              attr_accessor :default_search_property_names

              sig { returns(T::Boolean) }
              attr_accessor :deleted

              sig { returns(String) }
              attr_accessor :fully_qualified_name

              sig { returns(T::Boolean) }
              attr_accessor :has_custom_properties

              sig { returns(T::Boolean) }
              attr_accessor :has_default_properties

              sig { returns(T::Boolean) }
              attr_accessor :has_external_object_ids

              sig { returns(T::Boolean) }
              attr_accessor :has_owners

              sig { returns(T::Boolean) }
              attr_accessor :has_pipelines

              sig { returns(T::Boolean) }
              attr_accessor :indexed_for_filters_and_reports

              sig { returns(String) }
              attr_accessor :last_modified_property_name

              sig do
                returns(
                  HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                )
              end
              attr_accessor :meta_type

              sig { returns(Integer) }
              attr_accessor :meta_type_id

              sig { returns(String) }
              attr_accessor :name

              sig { returns(String) }
              attr_accessor :object_type_id

              sig { returns(String) }
              attr_accessor :permissioning_type

              sig { returns(String) }
              attr_accessor :pipeline_property_name

              sig { returns(String) }
              attr_accessor :pipeline_stage_property_name

              sig { returns(T::Array[String]) }
              attr_accessor :required_properties

              sig { returns(T::Boolean) }
              attr_accessor :restorable

              sig do
                returns(
                  T::Array[
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::ScopeMapping
                  ]
                )
              end
              attr_accessor :scope_mappings

              sig { returns(T::Array[String]) }
              attr_accessor :secondary_display_label_property_names

              sig { returns(T.nilable(String)) }
              attr_reader :access_scope_name

              sig { params(access_scope_name: String).void }
              attr_writer :access_scope_name

              sig { returns(T.nilable(Integer)) }
              attr_reader :created_at

              sig { params(created_at: Integer).void }
              attr_writer :created_at

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              sig { returns(T.nilable(Integer)) }
              attr_reader :integration_app_id

              sig { params(integration_app_id: Integer).void }
              attr_writer :integration_app_id

              sig { returns(T.nilable(String)) }
              attr_reader :janus_group

              sig { params(janus_group: String).void }
              attr_writer :janus_group

              sig { returns(T.nilable(Integer)) }
              attr_reader :owner_portal_id

              sig { params(owner_portal_id: Integer).void }
              attr_writer :owner_portal_id

              sig { returns(T.nilable(String)) }
              attr_reader :pipeline_close_date_property_name

              sig { params(pipeline_close_date_property_name: String).void }
              attr_writer :pipeline_close_date_property_name

              sig { returns(T.nilable(String)) }
              attr_reader :pipeline_time_to_close_property_name

              sig { params(pipeline_time_to_close_property_name: String).void }
              attr_writer :pipeline_time_to_close_property_name

              sig { returns(T.nilable(String)) }
              attr_reader :plural_form

              sig { params(plural_form: String).void }
              attr_writer :plural_form

              sig { returns(T.nilable(String)) }
              attr_reader :primary_display_label_property_name

              sig { params(primary_display_label_property_name: String).void }
              attr_writer :primary_display_label_property_name

              sig { returns(T.nilable(String)) }
              attr_reader :read_scope_name

              sig { params(read_scope_name: String).void }
              attr_writer :read_scope_name

              sig { returns(T.nilable(String)) }
              attr_reader :singular_form

              sig { params(singular_form: String).void }
              attr_writer :singular_form

              sig { returns(T.nilable(String)) }
              attr_reader :status

              sig { params(status: String).void }
              attr_writer :status

              sig { returns(T.nilable(String)) }
              attr_reader :visibility

              sig { params(visibility: String).void }
              attr_writer :visibility

              sig { returns(T.nilable(String)) }
              attr_reader :write_scope_name

              sig { params(write_scope_name: String).void }
              attr_writer :write_scope_name

              sig do
                params(
                  id: Integer,
                  allows_sensitive_properties: T::Boolean,
                  create_date_property_name: String,
                  default_search_property_names: T::Array[String],
                  deleted: T::Boolean,
                  fully_qualified_name: String,
                  has_custom_properties: T::Boolean,
                  has_default_properties: T::Boolean,
                  has_external_object_ids: T::Boolean,
                  has_owners: T::Boolean,
                  has_pipelines: T::Boolean,
                  indexed_for_filters_and_reports: T::Boolean,
                  last_modified_property_name: String,
                  meta_type:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::OrSymbol,
                  meta_type_id: Integer,
                  name: String,
                  object_type_id: String,
                  permissioning_type: String,
                  pipeline_property_name: String,
                  pipeline_stage_property_name: String,
                  required_properties: T::Array[String],
                  restorable: T::Boolean,
                  scope_mappings:
                    T::Array[
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::ScopeMapping::OrHash
                    ],
                  secondary_display_label_property_names: T::Array[String],
                  access_scope_name: String,
                  created_at: Integer,
                  description: String,
                  integration_app_id: Integer,
                  janus_group: String,
                  owner_portal_id: Integer,
                  pipeline_close_date_property_name: String,
                  pipeline_time_to_close_property_name: String,
                  plural_form: String,
                  primary_display_label_property_name: String,
                  read_scope_name: String,
                  singular_form: String,
                  status: String,
                  visibility: String,
                  write_scope_name: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                allows_sensitive_properties:,
                create_date_property_name:,
                default_search_property_names:,
                deleted:,
                fully_qualified_name:,
                has_custom_properties:,
                has_default_properties:,
                has_external_object_ids:,
                has_owners:,
                has_pipelines:,
                indexed_for_filters_and_reports:,
                last_modified_property_name:,
                meta_type:,
                meta_type_id:,
                name:,
                object_type_id:,
                permissioning_type:,
                pipeline_property_name:,
                pipeline_stage_property_name:,
                required_properties:,
                restorable:,
                scope_mappings:,
                secondary_display_label_property_names:,
                access_scope_name: nil,
                created_at: nil,
                description: nil,
                integration_app_id: nil,
                janus_group: nil,
                owner_portal_id: nil,
                pipeline_close_date_property_name: nil,
                pipeline_time_to_close_property_name: nil,
                plural_form: nil,
                primary_display_label_property_name: nil,
                read_scope_name: nil,
                singular_form: nil,
                status: nil,
                visibility: nil,
                write_scope_name: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    allows_sensitive_properties: T::Boolean,
                    create_date_property_name: String,
                    default_search_property_names: T::Array[String],
                    deleted: T::Boolean,
                    fully_qualified_name: String,
                    has_custom_properties: T::Boolean,
                    has_default_properties: T::Boolean,
                    has_external_object_ids: T::Boolean,
                    has_owners: T::Boolean,
                    has_pipelines: T::Boolean,
                    indexed_for_filters_and_reports: T::Boolean,
                    last_modified_property_name: String,
                    meta_type:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol,
                    meta_type_id: Integer,
                    name: String,
                    object_type_id: String,
                    permissioning_type: String,
                    pipeline_property_name: String,
                    pipeline_stage_property_name: String,
                    required_properties: T::Array[String],
                    restorable: T::Boolean,
                    scope_mappings:
                      T::Array[
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::ScopeMapping
                      ],
                    secondary_display_label_property_names: T::Array[String],
                    access_scope_name: String,
                    created_at: Integer,
                    description: String,
                    integration_app_id: Integer,
                    janus_group: String,
                    owner_portal_id: Integer,
                    pipeline_close_date_property_name: String,
                    pipeline_time_to_close_property_name: String,
                    plural_form: String,
                    primary_display_label_property_name: String,
                    read_scope_name: String,
                    singular_form: String,
                    status: String,
                    visibility: String,
                    write_scope_name: String
                  }
                )
              end
              def to_hash
              end

              module MetaType
                extend HubspotSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                HUBSPOT =
                  T.let(
                    :HUBSPOT,
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                  )
                INTEGRATION =
                  T.let(
                    :INTEGRATION,
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                  )
                PORTAL_SPECIFIC =
                  T.let(
                    :PORTAL_SPECIFIC,
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                  )
                CMS_HUBDB =
                  T.let(
                    :CMS_HUBDB,
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                  )
                HUBSPOT_EVENT =
                  T.let(
                    :HUBSPOT_EVENT,
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                  )
                INTEGRATION_EVENT =
                  T.let(
                    :INTEGRATION_EVENT,
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                  )
                PORTAL_SPECIFIC_EVENT =
                  T.let(
                    :PORTAL_SPECIFIC_EVENT,
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::MetaType::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class ScopeMapping < HubspotSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::ObjectType::ScopeMapping,
                      HubspotSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :access_level

                sig { returns(String) }
                attr_accessor :request_action

                sig { returns(String) }
                attr_accessor :scope_name

                sig do
                  params(
                    access_level: String,
                    request_action: String,
                    scope_name: String
                  ).returns(T.attached_class)
                end
                def self.new(access_level:, request_action:, scope_name:)
                end

                sig do
                  override.returns(
                    {
                      access_level: String,
                      request_action: String,
                      scope_name: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class Property < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :object_type_id

              # Defines a property
              sig { returns(HubspotSDK::Property) }
              attr_reader :property

              sig { params(property: HubspotSDK::Property::OrHash).void }
              attr_writer :property

              sig do
                returns(
                  T.nilable(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::Variants
                  )
                )
              end
              attr_reader :calculation_expression

              sig do
                params(
                  calculation_expression:
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime::OrHash
                    )
                ).void
              end
              attr_writer :calculation_expression

              sig { returns(T.nilable(String)) }
              attr_reader :calculation_formula

              sig { params(calculation_formula: String).void }
              attr_writer :calculation_formula

              sig do
                returns(
                  T.nilable(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource
                  )
                )
              end
              attr_reader :definition_source

              sig do
                params(
                  definition_source:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::OrHash
                ).void
              end
              attr_writer :definition_source

              sig do
                returns(
                  T.nilable(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData
                  )
                )
              end
              attr_reader :extension_data

              sig do
                params(
                  extension_data:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OrHash
                ).void
              end
              attr_writer :extension_data

              sig do
                returns(
                  T.nilable(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData
                  )
                )
              end
              attr_reader :external_options_meta_data

              sig do
                params(
                  external_options_meta_data:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData::OrHash
                ).void
              end
              attr_writer :external_options_meta_data

              sig { returns(T.nilable(Integer)) }
              attr_reader :fulcrum_portal_id

              sig { params(fulcrum_portal_id: Integer).void }
              attr_writer :fulcrum_portal_id

              sig { returns(T.nilable(Integer)) }
              attr_reader :fulcrum_timestamp

              sig { params(fulcrum_timestamp: Integer).void }
              attr_writer :fulcrum_timestamp

              sig { returns(T.nilable(String)) }
              attr_reader :janus_group

              sig { params(janus_group: String).void }
              attr_writer :janus_group

              sig do
                returns(
                  T.nilable(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::Permission
                  )
                )
              end
              attr_reader :permission

              sig do
                params(
                  permission:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::Permission::OrHash
                ).void
              end
              attr_writer :permission

              sig do
                returns(
                  T.nilable(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyDefinitionSource
                  )
                )
              end
              attr_reader :property_definition_source

              sig do
                params(
                  property_definition_source:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyDefinitionSource::OrHash
                ).void
              end
              attr_writer :property_definition_source

              sig do
                returns(
                  T.nilable(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements
                  )
                )
              end
              attr_reader :property_requirements

              sig do
                params(
                  property_requirements:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::OrHash
                ).void
              end
              attr_writer :property_requirements

              sig do
                returns(
                  T.nilable(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression
                  )
                )
              end
              attr_reader :rollup_expression

              sig do
                params(
                  rollup_expression:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::OrHash
                ).void
              end
              attr_writer :rollup_expression

              sig do
                params(
                  object_type_id: String,
                  property: HubspotSDK::Property::OrHash,
                  calculation_expression:
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime::OrHash,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime::OrHash
                    ),
                  calculation_formula: String,
                  definition_source:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::OrHash,
                  extension_data:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OrHash,
                  external_options_meta_data:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData::OrHash,
                  fulcrum_portal_id: Integer,
                  fulcrum_timestamp: Integer,
                  janus_group: String,
                  permission:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::Permission::OrHash,
                  property_definition_source:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyDefinitionSource::OrHash,
                  property_requirements:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::OrHash,
                  rollup_expression:
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                object_type_id:,
                # Defines a property
                property:,
                calculation_expression: nil,
                calculation_formula: nil,
                definition_source: nil,
                extension_data: nil,
                external_options_meta_data: nil,
                fulcrum_portal_id: nil,
                fulcrum_timestamp: nil,
                janus_group: nil,
                permission: nil,
                property_definition_source: nil,
                property_requirements: nil,
                rollup_expression: nil
              )
              end

              sig do
                override.returns(
                  {
                    object_type_id: String,
                    property: HubspotSDK::Property,
                    calculation_expression:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::Variants,
                    calculation_formula: String,
                    definition_source:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource,
                    extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData,
                    external_options_meta_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData,
                    fulcrum_portal_id: Integer,
                    fulcrum_timestamp: Integer,
                    janus_group: String,
                    permission:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::Permission,
                    property_definition_source:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyDefinitionSource,
                    property_requirements:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements,
                    rollup_expression:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression
                  }
                )
              end
              def to_hash
              end

              module CalculationExpression
                extend HubspotSDK::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime
                    )
                  end

                class CmsMediabridgeConstantBoolean < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONSTANT_BOOLEAN =
                      T.let(
                        :CONSTANT_BOOLEAN,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantBoolean::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeConstantNumber < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONSTANT_NUMBER =
                      T.let(
                        :CONSTANT_NUMBER,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantNumber::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeConstantString < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONSTANT_STRING =
                      T.let(
                        :CONSTANT_STRING,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConstantString::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeBooleanPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    BOOLEAN_PROPERTY_VARIABLE =
                      T.let(
                        :BOOLEAN_PROPERTY_VARIABLE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanPropertyVariable::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeStringPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    STRING_PROPERTY_VARIABLE =
                      T.let(
                        :STRING_PROPERTY_VARIABLE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringPropertyVariable::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeNumberPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NUMBER_PROPERTY_VARIABLE =
                      T.let(
                        :NUMBER_PROPERTY_VARIABLE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberPropertyVariable::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeTimestampOfPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    TIMESTAMP_OF_PROPERTY_VARIABLE =
                      T.let(
                        :TIMESTAMP_OF_PROPERTY_VARIABLE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeBooleanTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    BOOLEAN_TARGET_PROPERTY_VARIABLE =
                      T.let(
                        :BOOLEAN_TARGET_PROPERTY_VARIABLE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeStringTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    STRING_TARGET_PROPERTY_VARIABLE =
                      T.let(
                        :STRING_TARGET_PROPERTY_VARIABLE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeNumberTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NUMBER_TARGET_PROPERTY_VARIABLE =
                      T.let(
                        :NUMBER_TARGET_PROPERTY_VARIABLE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeTimestampOfTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    TIMESTAMP_OF_TARGET_PROPERTY_VARIABLE =
                      T.let(
                        :TIMESTAMP_OF_TARGET_PROPERTY_VARIABLE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeAddNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ADD_NUMBERS =
                      T.let(
                        :ADD_NUMBERS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeSubtractNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    SUBTRACT_NUMBERS =
                      T.let(
                        :SUBTRACT_NUMBERS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeMultiplyNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MULTIPLY_NUMBERS =
                      T.let(
                        :MULTIPLY_NUMBERS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMultiplyNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeDivideNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DIVIDE_NUMBERS =
                      T.let(
                        :DIVIDE_NUMBERS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDivideNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeRoundDownNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ROUND_DOWN =
                      T.let(
                        :ROUND_DOWN,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundDownNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeRoundUpNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ROUND_UP =
                      T.let(
                        :ROUND_UP,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundUpNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeRoundNearestNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ROUND_NEAREST =
                      T.let(
                        :ROUND_NEAREST,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeRoundNearestNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeUpperCase < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    UPPER_CASE =
                      T.let(
                        :UPPER_CASE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeUpperCase::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeLowerCase < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    LOWER_CASE =
                      T.let(
                        :LOWER_CASE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLowerCase::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeConcatStrings < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONCAT_STRINGS =
                      T.let(
                        :CONCAT_STRINGS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeConcatStrings::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeContains < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.anything) }
                  attr_accessor :string_to_check

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains::Operator::OrSymbol,
                      string_to_check: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    string_to_check:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains::Operator::TaggedSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    CONTAINS =
                      T.let(
                        :CONTAINS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeContains::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeBeginsWith < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.anything) }
                  attr_accessor :string_to_check

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator::OrSymbol,
                      string_to_check: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    string_to_check:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator::TaggedSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    BEGINS_WITH =
                      T.let(
                        :BEGINS_WITH,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeBeginsWith::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeNumberToString < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NUMBER_TO_STRING =
                      T.let(
                        :NUMBER_TO_STRING,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberToString::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeParseNumber < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PARSE_NUMBER =
                      T.let(
                        :PARSE_NUMBER,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeParseNumber::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeFetchExchangeRate < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    FETCH_EXCHANGE_RATE =
                      T.let(
                        :FETCH_EXCHANGE_RATE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchExchangeRate::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeFetchCurrencyDecimalPlaces < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    FETCH_CURRENCY_DECIMAL_PLACES =
                      T.let(
                        :FETCH_CURRENCY_DECIMAL_PLACES,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeFetchSingleCurrencyPortalCurrency < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY =
                      T.let(
                        :FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeDatedExchangeRate < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DATED_EXCHANGE_RATE =
                      T.let(
                        :DATED_EXCHANGE_RATE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDatedExchangeRate::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgePipelineProbability < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PIPELINE_PROBABILITY =
                      T.let(
                        :PIPELINE_PROBABILITY,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePipelineProbability::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeMaxNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MAX_NUMBERS =
                      T.let(
                        :MAX_NUMBERS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMaxNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeMinNumbers < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MIN_NUMBERS =
                      T.let(
                        :MIN_NUMBERS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMinNumbers::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeLessThan < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    LESS_THAN =
                      T.let(
                        :LESS_THAN,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThan::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeLessThanOrEqual < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    LESS_THAN_OR_EQUAL =
                      T.let(
                        :LESS_THAN_OR_EQUAL,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeLessThanOrEqual::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeMoreThan < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MORE_THAN =
                      T.let(
                        :MORE_THAN,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThan::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeMoreThanOrEqual < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MORE_THAN_OR_EQUAL =
                      T.let(
                        :MORE_THAN_OR_EQUAL,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMoreThanOrEqual::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeNumberEquals < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NUMBER_EQUALS =
                      T.let(
                        :NUMBER_EQUALS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNumberEquals::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeStringEquals < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    STRING_EQUALS =
                      T.let(
                        :STRING_EQUALS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringEquals::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeIsPipelineStageClosed < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    IS_PIPELINE_STAGE_CLOSED =
                      T.let(
                        :IS_PIPELINE_STAGE_CLOSED,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPipelineStageClosed::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeNot < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NOT =
                      T.let(
                        :NOT,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNot::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeDate < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DATE =
                      T.let(
                        :DATE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeDate::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeMonth < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MONTH =
                      T.let(
                        :MONTH,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeMonth::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeYear < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    YEAR =
                      T.let(
                        :YEAR,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeYear::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeNow < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    NOW =
                      T.let(
                        :NOW,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeNow::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeTimeBetween < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    TIME_BETWEEN =
                      T.let(
                        :TIME_BETWEEN,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeTimeBetween::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgePeriodToMonths < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PERIOD_TO_MONTHS =
                      T.let(
                        :PERIOD_TO_MONTHS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToMonths::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgePeriodToWeeks < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PERIOD_TO_WEEKS =
                      T.let(
                        :PERIOD_TO_WEEKS,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePeriodToWeeks::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeAnd < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    AND =
                      T.let(
                        :AND,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAnd::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeOr < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    OR =
                      T.let(
                        :OR,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeOr::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeXor < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    XOR =
                      T.let(
                        :XOR,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeXor::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeIfString < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig { returns(T.anything) }
                  attr_accessor :if_expression

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T.anything)) }
                  attr_reader :else_expression

                  sig { params(else_expression: T.anything).void }
                  attr_writer :else_expression

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      if_expression: T.anything,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString::Operator::OrSymbol,
                      else_expression: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    if_expression:,
                    operator:,
                    else_expression: nil,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        if_expression: T.anything,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString::Operator::TaggedSymbol,
                        else_expression: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    IF_STRING =
                      T.let(
                        :IF_STRING,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfString::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeIfNumber < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig { returns(T.anything) }
                  attr_accessor :if_expression

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T.anything)) }
                  attr_reader :else_expression

                  sig { params(else_expression: T.anything).void }
                  attr_writer :else_expression

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      if_expression: T.anything,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator::OrSymbol,
                      else_expression: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    if_expression:,
                    operator:,
                    else_expression: nil,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        if_expression: T.anything,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator::TaggedSymbol,
                        else_expression: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    IF_NUMBER =
                      T.let(
                        :IF_NUMBER,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfNumber::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeIfBoolean < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :enclosed_in_parentheses

                  sig { returns(T.anything) }
                  attr_accessor :if_expression

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T.anything)) }
                  attr_reader :else_expression

                  sig { params(else_expression: T.anything).void }
                  attr_writer :else_expression

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      enclosed_in_parentheses: T::Boolean,
                      if_expression: T.anything,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator::OrSymbol,
                      else_expression: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    enclosed_in_parentheses:,
                    if_expression:,
                    operator:,
                    else_expression: nil,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        enclosed_in_parentheses: T::Boolean,
                        if_expression: T.anything,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator::TaggedSymbol,
                        else_expression: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    IF_BOOLEAN =
                      T.let(
                        :IF_BOOLEAN,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIfBoolean::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeIsPresent < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T.anything) }
                  attr_accessor :expression_to_evaluate

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      expression_to_evaluate: T.anything,
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    expression_to_evaluate:,
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        expression_to_evaluate: T.anything,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    IS_PRESENT =
                      T.let(
                        :IS_PRESENT,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsPresent::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeHasEmailReply < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HAS_EMAIL_REPLY =
                      T.let(
                        :HAS_EMAIL_REPLY,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasEmailReply::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeHasPlainTextEmailReply < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    HAS_PLAIN_TEXT_EMAIL_REPLY =
                      T.let(
                        :HAS_PLAIN_TEXT_EMAIL_REPLY,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeExtractMostRecentEmailReplyHTML < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML =
                      T.let(
                        :EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeExtractMostRecentEmailReplyText < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT =
                      T.let(
                        :EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeExtractMostRecentPlainTextEmailReply < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    EXTRACT_MOST_RECENT_PLAIN_TEXT_EMAIL_REPLY =
                      T.let(
                        :EXTRACT_MOST_RECENT_PLAIN_TEXT_EMAIL_REPLY,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeSetContainsString < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.anything) }
                  attr_accessor :string_to_check

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator::OrSymbol,
                      string_to_check: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    string_to_check:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator::TaggedSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    SET_CONTAINS_STRING =
                      T.let(
                        :SET_CONTAINS_STRING,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSetContainsString::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeIsEngagementType < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :value

                  sig { params(value: T::Boolean).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: T::Boolean
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    IS_ENGAGEMENT_TYPE =
                      T.let(
                        :IS_ENGAGEMENT_TYPE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeIsEngagementType::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeFormatFullName < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    FORMAT_FULL_NAME =
                      T.let(
                        :FORMAT_FULL_NAME,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeFormatFullName::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeAbsoluteValue < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ABSOLUTE_VALUE =
                      T.let(
                        :ABSOLUTE_VALUE,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAbsoluteValue::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeSquareRoot < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    SQUARE_ROOT =
                      T.let(
                        :SQUARE_ROOT,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSquareRoot::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgePower < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    POWER =
                      T.let(
                        :POWER,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgePower::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeSubstring < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.anything) }
                  attr_accessor :string_to_check

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(String)) }
                  attr_reader :value

                  sig { params(value: String).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring::Operator::OrSymbol,
                      string_to_check: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    string_to_check:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring::Operator::TaggedSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    SUBSTRING =
                      T.let(
                        :SUBSTRING,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubstring::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeEuler < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    EULER =
                      T.let(
                        :EULER,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeEuler::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeStringLength < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength::Operator::OrSymbol,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength::Operator::TaggedSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    STRING_LENGTH =
                      T.let(
                        :STRING_LENGTH,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeStringLength::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeAddTime < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.anything) }
                  attr_accessor :string_to_check

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime::Operator::OrSymbol,
                      string_to_check: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    string_to_check:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime::Operator::TaggedSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    ADD_TIME =
                      T.let(
                        :ADD_TIME,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeAddTime::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                class CmsMediabridgeSubtractTime < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator::TaggedSymbol
                    )
                  end
                  attr_accessor :operator

                  sig { returns(T.anything) }
                  attr_accessor :string_to_check

                  sig { returns(T.nilable(T::Array[T.anything])) }
                  attr_reader :inputs

                  sig { params(inputs: T::Array[T.anything]).void }
                  attr_writer :inputs

                  sig { returns(T.nilable(String)) }
                  attr_reader :property_name

                  sig { params(property_name: String).void }
                  attr_writer :property_name

                  sig { returns(T.nilable(Float)) }
                  attr_reader :value

                  sig { params(value: Float).void }
                  attr_writer :value

                  sig do
                    params(
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator::OrSymbol,
                      string_to_check: T.anything,
                      inputs: T::Array[T.anything],
                      property_name: String,
                      value: Float
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    operator:,
                    string_to_check:,
                    inputs: nil,
                    property_name: nil,
                    value: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator::TaggedSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      }
                    )
                  end
                  def to_hash
                  end

                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    SUBTRACT_TIME =
                      T.let(
                        :SUBTRACT_TIME,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::CmsMediabridgeSubtractTime::Operator::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::CalculationExpression::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              class DefinitionSource < HubspotSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource,
                      HubspotSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig do
                  params(
                    type:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type::OrSymbol,
                    name: String
                  ).returns(T.attached_class)
                end
                def self.new(type:, name: nil)
                end

                sig do
                  override.returns(
                    {
                      type:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type::TaggedSymbol,
                      name: String
                    }
                  )
                end
                def to_hash
                end

                module Type
                  extend HubspotSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  GLOBAL =
                    T.let(
                      :GLOBAL,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type::TaggedSymbol
                    )
                  OBJECT_TYPE =
                    T.let(
                      :OBJECT_TYPE,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type::TaggedSymbol
                    )
                  HAVEN_BRANCH =
                    T.let(
                      :HAVEN_BRANCH,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type::TaggedSymbol
                    )
                  PORTAL =
                    T.let(
                      :PORTAL,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::DefinitionSource::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class ExtensionData < HubspotSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData,
                      HubspotSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Hash[Symbol, String]) }
                attr_accessor :extension_status_map

                sig { returns(T::Array[String]) }
                attr_accessor :tags

                sig do
                  returns(
                    T.nilable(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::CaseChangeTestExtensionData
                    )
                  )
                end
                attr_reader :case_change_test_extension_data

                sig do
                  params(
                    case_change_test_extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::CaseChangeTestExtensionData::OrHash
                  ).void
                end
                attr_writer :case_change_test_extension_data

                sig do
                  returns(
                    T.nilable(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData
                    )
                  )
                end
                attr_reader :option_decorators_extension_data

                sig do
                  params(
                    option_decorators_extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData::OrHash
                  ).void
                end
                attr_writer :option_decorators_extension_data

                sig do
                  returns(
                    T.nilable(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::RequiredPropertiesExtensionData
                    )
                  )
                end
                attr_reader :required_properties_extension_data

                sig do
                  params(
                    required_properties_extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::RequiredPropertiesExtensionData::OrHash
                  ).void
                end
                attr_writer :required_properties_extension_data

                sig do
                  returns(
                    T.nilable(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::SoftRequiredPropertiesExtensionData
                    )
                  )
                end
                attr_reader :soft_required_properties_extension_data

                sig do
                  params(
                    soft_required_properties_extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::SoftRequiredPropertiesExtensionData::OrHash
                  ).void
                end
                attr_writer :soft_required_properties_extension_data

                sig do
                  params(
                    extension_status_map: T::Hash[Symbol, String],
                    tags: T::Array[String],
                    case_change_test_extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::CaseChangeTestExtensionData::OrHash,
                    option_decorators_extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData::OrHash,
                    required_properties_extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::RequiredPropertiesExtensionData::OrHash,
                    soft_required_properties_extension_data:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::SoftRequiredPropertiesExtensionData::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(
                  extension_status_map:,
                  tags:,
                  case_change_test_extension_data: nil,
                  option_decorators_extension_data: nil,
                  required_properties_extension_data: nil,
                  soft_required_properties_extension_data: nil
                )
                end

                sig do
                  override.returns(
                    {
                      extension_status_map: T::Hash[Symbol, String],
                      tags: T::Array[String],
                      case_change_test_extension_data:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::CaseChangeTestExtensionData,
                      option_decorators_extension_data:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData,
                      required_properties_extension_data:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::RequiredPropertiesExtensionData,
                      soft_required_properties_extension_data:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::SoftRequiredPropertiesExtensionData
                    }
                  )
                end
                def to_hash
                end

                class CaseChangeTestExtensionData < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::CaseChangeTestExtensionData,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(String) }
                  attr_accessor :mood

                  sig { params(mood: String).returns(T.attached_class) }
                  def self.new(mood:)
                  end

                  sig { override.returns({ mood: String }) }
                  def to_hash
                  end
                end

                class OptionDecoratorsExtensionData < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      T::Hash[
                        Symbol,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData::OptionDecorator
                      ]
                    )
                  end
                  attr_accessor :option_decorators

                  sig { returns(String) }
                  attr_accessor :option_decorator_style

                  sig do
                    params(
                      option_decorators:
                        T::Hash[
                          Symbol,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData::OptionDecorator::OrHash
                        ],
                      option_decorator_style: String
                    ).returns(T.attached_class)
                  end
                  def self.new(option_decorators:, option_decorator_style:)
                  end

                  sig do
                    override.returns(
                      {
                        option_decorators:
                          T::Hash[
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData::OptionDecorator
                          ],
                        option_decorator_style: String
                      }
                    )
                  end
                  def to_hash
                  end

                  class OptionDecorator < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::OptionDecoratorsExtensionData::OptionDecorator,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(String) }
                    attr_accessor :color

                    sig { params(color: String).returns(T.attached_class) }
                    def self.new(color:)
                    end

                    sig { override.returns({ color: String }) }
                    def to_hash
                    end
                  end
                end

                class RequiredPropertiesExtensionData < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::RequiredPropertiesExtensionData,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :is_required_property

                  sig do
                    params(is_required_property: T::Boolean).returns(
                      T.attached_class
                    )
                  end
                  def self.new(is_required_property:)
                  end

                  sig { override.returns({ is_required_property: T::Boolean }) }
                  def to_hash
                  end
                end

                class SoftRequiredPropertiesExtensionData < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExtensionData::SoftRequiredPropertiesExtensionData,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :is_soft_required_property

                  sig do
                    params(is_soft_required_property: T::Boolean).returns(
                      T.attached_class
                    )
                  end
                  def self.new(is_soft_required_property:)
                  end

                  sig do
                    override.returns({ is_soft_required_property: T::Boolean })
                  end
                  def to_hash
                  end
                end
              end

              class ExternalOptionsMetaData < HubspotSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData,
                      HubspotSDK::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData::Filter
                    )
                  )
                end
                attr_reader :filter

                sig do
                  params(
                    filter:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData::Filter::OrHash
                  ).void
                end
                attr_writer :filter

                sig { returns(T.nilable(String)) }
                attr_reader :related_object_type_id

                sig { params(related_object_type_id: String).void }
                attr_writer :related_object_type_id

                sig do
                  params(
                    filter:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData::Filter::OrHash,
                    related_object_type_id: String
                  ).returns(T.attached_class)
                end
                def self.new(filter: nil, related_object_type_id: nil)
                end

                sig do
                  override.returns(
                    {
                      filter:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData::Filter,
                      related_object_type_id: String
                    }
                  )
                end
                def to_hash
                end

                class Filter < HubspotSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::ExternalOptionsMetaData::Filter,
                        HubspotSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(T::Boolean) }
                  attr_accessor :include_unconfirmed_users

                  sig { returns(T::Array[String]) }
                  attr_accessor :pipeline_ids

                  sig do
                    params(
                      include_unconfirmed_users: T::Boolean,
                      pipeline_ids: T::Array[String]
                    ).returns(T.attached_class)
                  end
                  def self.new(include_unconfirmed_users:, pipeline_ids:)
                  end

                  sig do
                    override.returns(
                      {
                        include_unconfirmed_users: T::Boolean,
                        pipeline_ids: T::Array[String]
                      }
                    )
                  end
                  def to_hash
                  end
                end
              end

              class Permission < HubspotSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::Permission,
                      HubspotSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :access_level

                sig { params(access_level: String).returns(T.attached_class) }
                def self.new(access_level:)
                end

                sig { override.returns({ access_level: String }) }
                def to_hash
                end
              end

              class PropertyDefinitionSource < HubspotSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyDefinitionSource,
                      HubspotSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :type

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig do
                  params(type: String, name: String).returns(T.attached_class)
                end
                def self.new(type:, name: nil)
                end

                sig { override.returns({ type: String, name: String }) }
                def to_hash
                end
              end

              class PropertyRequirements < HubspotSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements,
                      HubspotSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[String]) }
                attr_accessor :gates

                sig do
                  returns(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                sig { returns(T::Array[String]) }
                attr_accessor :scope_names

                sig { returns(T::Array[String]) }
                attr_accessor :settings

                sig do
                  params(
                    gates: T::Array[String],
                    operator:
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::Operator::OrSymbol,
                    scope_names: T::Array[String],
                    settings: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(gates:, operator:, scope_names:, settings:)
                end

                sig do
                  override.returns(
                    {
                      gates: T::Array[String],
                      operator:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::Operator::TaggedSymbol,
                      scope_names: T::Array[String],
                      settings: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                module Operator
                  extend HubspotSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  AND =
                    T.let(
                      :AND,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::Operator::TaggedSymbol
                    )
                  OR =
                    T.let(
                      :OR,
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::PropertyRequirements::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class RollupExpression < HubspotSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression,
                      HubspotSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T::Array[HubspotSDK::AssociationSpec]) }
                attr_accessor :association_types

                sig { returns(String) }
                attr_accessor :rollup_operator

                sig { returns(String) }
                attr_accessor :source_object_type_id

                sig { returns(String) }
                attr_accessor :source_property_name

                sig do
                  returns(
                    T.nilable(
                      HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::Variants
                    )
                  )
                end
                attr_reader :conditional_expression

                sig do
                  params(
                    conditional_expression:
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::OrHash
                      )
                  ).void
                end
                attr_writer :conditional_expression

                sig { returns(T.nilable(String)) }
                attr_reader :conditional_formula

                sig { params(conditional_formula: String).void }
                attr_writer :conditional_formula

                sig { returns(T.nilable(String)) }
                attr_reader :empty_rollup_value

                sig { params(empty_rollup_value: String).void }
                attr_writer :empty_rollup_value

                sig { returns(T.nilable(String)) }
                attr_reader :source_compare_by_property_name

                sig { params(source_compare_by_property_name: String).void }
                attr_writer :source_compare_by_property_name

                sig do
                  params(
                    association_types:
                      T::Array[HubspotSDK::AssociationSpec::OrHash],
                    rollup_operator: String,
                    source_object_type_id: String,
                    source_property_name: String,
                    conditional_expression:
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::OrHash,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::OrHash
                      ),
                    conditional_formula: String,
                    empty_rollup_value: String,
                    source_compare_by_property_name: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  association_types:,
                  rollup_operator:,
                  source_object_type_id:,
                  source_property_name:,
                  conditional_expression: nil,
                  conditional_formula: nil,
                  empty_rollup_value: nil,
                  source_compare_by_property_name: nil
                )
                end

                sig do
                  override.returns(
                    {
                      association_types: T::Array[HubspotSDK::AssociationSpec],
                      rollup_operator: String,
                      source_object_type_id: String,
                      source_property_name: String,
                      conditional_expression:
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::Variants,
                      conditional_formula: String,
                      empty_rollup_value: String,
                      source_compare_by_property_name: String
                    }
                  )
                end
                def to_hash
                end

                module ConditionalExpression
                  extend HubspotSDK::Internal::Type::Union

                  Variants =
                    T.type_alias do
                      T.any(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime,
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime
                      )
                    end

                  class CmsMediabridgeConstantBoolean < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      CONSTANT_BOOLEAN =
                        T.let(
                          :CONSTANT_BOOLEAN,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantBoolean::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeConstantNumber < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      CONSTANT_NUMBER =
                        T.let(
                          :CONSTANT_NUMBER,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantNumber::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeConstantString < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      CONSTANT_STRING =
                        T.let(
                          :CONSTANT_STRING,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConstantString::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeBooleanPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      BOOLEAN_PROPERTY_VARIABLE =
                        T.let(
                          :BOOLEAN_PROPERTY_VARIABLE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanPropertyVariable::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeStringPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      STRING_PROPERTY_VARIABLE =
                        T.let(
                          :STRING_PROPERTY_VARIABLE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringPropertyVariable::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeNumberPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      NUMBER_PROPERTY_VARIABLE =
                        T.let(
                          :NUMBER_PROPERTY_VARIABLE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberPropertyVariable::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeTimestampOfPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      TIMESTAMP_OF_PROPERTY_VARIABLE =
                        T.let(
                          :TIMESTAMP_OF_PROPERTY_VARIABLE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfPropertyVariable::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeBooleanTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      BOOLEAN_TARGET_PROPERTY_VARIABLE =
                        T.let(
                          :BOOLEAN_TARGET_PROPERTY_VARIABLE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBooleanTargetPropertyVariable::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeStringTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      STRING_TARGET_PROPERTY_VARIABLE =
                        T.let(
                          :STRING_TARGET_PROPERTY_VARIABLE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringTargetPropertyVariable::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeNumberTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      NUMBER_TARGET_PROPERTY_VARIABLE =
                        T.let(
                          :NUMBER_TARGET_PROPERTY_VARIABLE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberTargetPropertyVariable::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeTimestampOfTargetPropertyVariable < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      TIMESTAMP_OF_TARGET_PROPERTY_VARIABLE =
                        T.let(
                          :TIMESTAMP_OF_TARGET_PROPERTY_VARIABLE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimestampOfTargetPropertyVariable::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeAddNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      ADD_NUMBERS =
                        T.let(
                          :ADD_NUMBERS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeSubtractNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      SUBTRACT_NUMBERS =
                        T.let(
                          :SUBTRACT_NUMBERS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeMultiplyNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      MULTIPLY_NUMBERS =
                        T.let(
                          :MULTIPLY_NUMBERS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMultiplyNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeDivideNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      DIVIDE_NUMBERS =
                        T.let(
                          :DIVIDE_NUMBERS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDivideNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeRoundDownNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      ROUND_DOWN =
                        T.let(
                          :ROUND_DOWN,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundDownNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeRoundUpNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      ROUND_UP =
                        T.let(
                          :ROUND_UP,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundUpNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeRoundNearestNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      ROUND_NEAREST =
                        T.let(
                          :ROUND_NEAREST,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeRoundNearestNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeUpperCase < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      UPPER_CASE =
                        T.let(
                          :UPPER_CASE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeUpperCase::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeLowerCase < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      LOWER_CASE =
                        T.let(
                          :LOWER_CASE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLowerCase::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeConcatStrings < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      CONCAT_STRINGS =
                        T.let(
                          :CONCAT_STRINGS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeConcatStrings::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeContains < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.anything) }
                    attr_accessor :string_to_check

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator::OrSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      string_to_check:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator::TaggedSymbol,
                          string_to_check: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      CONTAINS =
                        T.let(
                          :CONTAINS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeContains::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeBeginsWith < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.anything) }
                    attr_accessor :string_to_check

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator::OrSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      string_to_check:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator::TaggedSymbol,
                          string_to_check: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      BEGINS_WITH =
                        T.let(
                          :BEGINS_WITH,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeBeginsWith::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeNumberToString < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      NUMBER_TO_STRING =
                        T.let(
                          :NUMBER_TO_STRING,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberToString::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeParseNumber < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      PARSE_NUMBER =
                        T.let(
                          :PARSE_NUMBER,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeParseNumber::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeFetchExchangeRate < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      FETCH_EXCHANGE_RATE =
                        T.let(
                          :FETCH_EXCHANGE_RATE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchExchangeRate::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeFetchCurrencyDecimalPlaces < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      FETCH_CURRENCY_DECIMAL_PLACES =
                        T.let(
                          :FETCH_CURRENCY_DECIMAL_PLACES,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchCurrencyDecimalPlaces::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeFetchSingleCurrencyPortalCurrency < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY =
                        T.let(
                          :FETCH_SINGLE_CURRENCY_PORTAL_CURRENCY,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFetchSingleCurrencyPortalCurrency::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeDatedExchangeRate < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      DATED_EXCHANGE_RATE =
                        T.let(
                          :DATED_EXCHANGE_RATE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDatedExchangeRate::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgePipelineProbability < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      PIPELINE_PROBABILITY =
                        T.let(
                          :PIPELINE_PROBABILITY,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePipelineProbability::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeMaxNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      MAX_NUMBERS =
                        T.let(
                          :MAX_NUMBERS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMaxNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeMinNumbers < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      MIN_NUMBERS =
                        T.let(
                          :MIN_NUMBERS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMinNumbers::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeLessThan < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      LESS_THAN =
                        T.let(
                          :LESS_THAN,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThan::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeLessThanOrEqual < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      LESS_THAN_OR_EQUAL =
                        T.let(
                          :LESS_THAN_OR_EQUAL,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeLessThanOrEqual::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeMoreThan < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      MORE_THAN =
                        T.let(
                          :MORE_THAN,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThan::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeMoreThanOrEqual < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      MORE_THAN_OR_EQUAL =
                        T.let(
                          :MORE_THAN_OR_EQUAL,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMoreThanOrEqual::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeNumberEquals < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      NUMBER_EQUALS =
                        T.let(
                          :NUMBER_EQUALS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNumberEquals::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeStringEquals < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      STRING_EQUALS =
                        T.let(
                          :STRING_EQUALS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringEquals::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeIsPipelineStageClosed < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      IS_PIPELINE_STAGE_CLOSED =
                        T.let(
                          :IS_PIPELINE_STAGE_CLOSED,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPipelineStageClosed::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeNot < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      NOT =
                        T.let(
                          :NOT,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNot::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeDate < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      DATE =
                        T.let(
                          :DATE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeDate::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeMonth < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      MONTH =
                        T.let(
                          :MONTH,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeMonth::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeYear < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      YEAR =
                        T.let(
                          :YEAR,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeYear::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeNow < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      NOW =
                        T.let(
                          :NOW,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeNow::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeTimeBetween < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      TIME_BETWEEN =
                        T.let(
                          :TIME_BETWEEN,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeTimeBetween::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgePeriodToMonths < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      PERIOD_TO_MONTHS =
                        T.let(
                          :PERIOD_TO_MONTHS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToMonths::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgePeriodToWeeks < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      PERIOD_TO_WEEKS =
                        T.let(
                          :PERIOD_TO_WEEKS,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePeriodToWeeks::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeAnd < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      AND =
                        T.let(
                          :AND,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAnd::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeOr < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      OR =
                        T.let(
                          :OR,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeOr::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeXor < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      XOR =
                        T.let(
                          :XOR,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeXor::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeIfString < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig { returns(T.anything) }
                    attr_accessor :if_expression

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T.anything)) }
                    attr_reader :else_expression

                    sig { params(else_expression: T.anything).void }
                    attr_writer :else_expression

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        if_expression: T.anything,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator::OrSymbol,
                        else_expression: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      if_expression:,
                      operator:,
                      else_expression: nil,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          if_expression: T.anything,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator::TaggedSymbol,
                          else_expression: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      IF_STRING =
                        T.let(
                          :IF_STRING,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfString::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeIfNumber < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig { returns(T.anything) }
                    attr_accessor :if_expression

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T.anything)) }
                    attr_reader :else_expression

                    sig { params(else_expression: T.anything).void }
                    attr_writer :else_expression

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        if_expression: T.anything,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator::OrSymbol,
                        else_expression: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      if_expression:,
                      operator:,
                      else_expression: nil,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          if_expression: T.anything,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator::TaggedSymbol,
                          else_expression: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      IF_NUMBER =
                        T.let(
                          :IF_NUMBER,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfNumber::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeIfBoolean < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T::Boolean) }
                    attr_accessor :enclosed_in_parentheses

                    sig { returns(T.anything) }
                    attr_accessor :if_expression

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T.anything)) }
                    attr_reader :else_expression

                    sig { params(else_expression: T.anything).void }
                    attr_writer :else_expression

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        enclosed_in_parentheses: T::Boolean,
                        if_expression: T.anything,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator::OrSymbol,
                        else_expression: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      enclosed_in_parentheses:,
                      if_expression:,
                      operator:,
                      else_expression: nil,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          enclosed_in_parentheses: T::Boolean,
                          if_expression: T.anything,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator::TaggedSymbol,
                          else_expression: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      IF_BOOLEAN =
                        T.let(
                          :IF_BOOLEAN,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIfBoolean::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeIsPresent < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig { returns(T.anything) }
                    attr_accessor :expression_to_evaluate

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        expression_to_evaluate: T.anything,
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      expression_to_evaluate:,
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          expression_to_evaluate: T.anything,
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      IS_PRESENT =
                        T.let(
                          :IS_PRESENT,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsPresent::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeHasEmailReply < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      HAS_EMAIL_REPLY =
                        T.let(
                          :HAS_EMAIL_REPLY,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasEmailReply::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeHasPlainTextEmailReply < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      HAS_PLAIN_TEXT_EMAIL_REPLY =
                        T.let(
                          :HAS_PLAIN_TEXT_EMAIL_REPLY,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeHasPlainTextEmailReply::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeExtractMostRecentEmailReplyHTML < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML =
                        T.let(
                          :EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeExtractMostRecentEmailReplyText < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT =
                        T.let(
                          :EXTRACT_MOST_RECENT_EMAIL_REPLY_TEXT,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentEmailReplyText::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeExtractMostRecentPlainTextEmailReply < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      EXTRACT_MOST_RECENT_PLAIN_TEXT_EMAIL_REPLY =
                        T.let(
                          :EXTRACT_MOST_RECENT_PLAIN_TEXT_EMAIL_REPLY,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeExtractMostRecentPlainTextEmailReply::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeSetContainsString < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.anything) }
                    attr_accessor :string_to_check

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator::OrSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      string_to_check:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator::TaggedSymbol,
                          string_to_check: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      SET_CONTAINS_STRING =
                        T.let(
                          :SET_CONTAINS_STRING,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSetContainsString::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeIsEngagementType < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(T::Boolean)) }
                    attr_reader :value

                    sig { params(value: T::Boolean).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: T::Boolean
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      IS_ENGAGEMENT_TYPE =
                        T.let(
                          :IS_ENGAGEMENT_TYPE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeIsEngagementType::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeFormatFullName < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      FORMAT_FULL_NAME =
                        T.let(
                          :FORMAT_FULL_NAME,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeFormatFullName::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeAbsoluteValue < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      ABSOLUTE_VALUE =
                        T.let(
                          :ABSOLUTE_VALUE,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAbsoluteValue::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeSquareRoot < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      SQUARE_ROOT =
                        T.let(
                          :SQUARE_ROOT,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSquareRoot::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgePower < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      POWER =
                        T.let(
                          :POWER,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgePower::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeSubstring < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.anything) }
                    attr_accessor :string_to_check

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(String)) }
                    attr_reader :value

                    sig { params(value: String).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator::OrSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: String
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      string_to_check:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator::TaggedSymbol,
                          string_to_check: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: String
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      SUBSTRING =
                        T.let(
                          :SUBSTRING,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubstring::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeEuler < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      EULER =
                        T.let(
                          :EULER,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeEuler::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeStringLength < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator::OrSymbol,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator::TaggedSymbol,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      STRING_LENGTH =
                        T.let(
                          :STRING_LENGTH,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeStringLength::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeAddTime < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.anything) }
                    attr_accessor :string_to_check

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator::OrSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      string_to_check:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator::TaggedSymbol,
                          string_to_check: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      ADD_TIME =
                        T.let(
                          :ADD_TIME,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeAddTime::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  class CmsMediabridgeSubtractTime < HubspotSDK::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime,
                          HubspotSDK::Internal::AnyHash
                        )
                      end

                    sig do
                      returns(
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator::TaggedSymbol
                      )
                    end
                    attr_accessor :operator

                    sig { returns(T.anything) }
                    attr_accessor :string_to_check

                    sig { returns(T.nilable(T::Array[T.anything])) }
                    attr_reader :inputs

                    sig { params(inputs: T::Array[T.anything]).void }
                    attr_writer :inputs

                    sig { returns(T.nilable(String)) }
                    attr_reader :property_name

                    sig { params(property_name: String).void }
                    attr_writer :property_name

                    sig { returns(T.nilable(Float)) }
                    attr_reader :value

                    sig { params(value: Float).void }
                    attr_writer :value

                    sig do
                      params(
                        operator:
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator::OrSymbol,
                        string_to_check: T.anything,
                        inputs: T::Array[T.anything],
                        property_name: String,
                        value: Float
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      operator:,
                      string_to_check:,
                      inputs: nil,
                      property_name: nil,
                      value: nil
                    )
                    end

                    sig do
                      override.returns(
                        {
                          operator:
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator::TaggedSymbol,
                          string_to_check: T.anything,
                          inputs: T::Array[T.anything],
                          property_name: String,
                          value: Float
                        }
                      )
                    end
                    def to_hash
                    end

                    module Operator
                      extend HubspotSDK::Internal::Type::Enum

                      TaggedSymbol =
                        T.type_alias do
                          T.all(
                            Symbol,
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator
                          )
                        end
                      OrSymbol = T.type_alias { T.any(Symbol, String) }

                      SUBTRACT_TIME =
                        T.let(
                          :SUBTRACT_TIME,
                          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator::TaggedSymbol
                        )

                      sig do
                        override.returns(
                          T::Array[
                            HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::CmsMediabridgeSubtractTime::Operator::TaggedSymbol
                          ]
                        )
                      end
                      def self.values
                      end
                    end
                  end

                  sig do
                    override.returns(
                      T::Array[
                        HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::Property::RollupExpression::ConditionalExpression::Variants
                      ]
                    )
                  end
                  def self.variants
                  end
                end
              end
            end

            class PropertyGroup < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject::PropertyGroup,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(T::Boolean) }
              attr_accessor :deleted

              sig { returns(String) }
              attr_accessor :display_name

              sig { returns(Integer) }
              attr_accessor :display_order

              sig { returns(Integer) }
              attr_accessor :fulcrum_portal_id

              sig { returns(Integer) }
              attr_accessor :fulcrum_timestamp

              sig { returns(T::Boolean) }
              attr_accessor :hubspot_defined

              sig { returns(String) }
              attr_accessor :name

              sig { returns(Integer) }
              attr_accessor :portal_id

              sig do
                params(
                  deleted: T::Boolean,
                  display_name: String,
                  display_order: Integer,
                  fulcrum_portal_id: Integer,
                  fulcrum_timestamp: Integer,
                  hubspot_defined: T::Boolean,
                  name: String,
                  portal_id: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                deleted:,
                display_name:,
                display_order:,
                fulcrum_portal_id:,
                fulcrum_timestamp:,
                hubspot_defined:,
                name:,
                portal_id:
              )
              end

              sig do
                override.returns(
                  {
                    deleted: T::Boolean,
                    display_name: String,
                    display_order: Integer,
                    fulcrum_portal_id: Integer,
                    fulcrum_timestamp: Integer,
                    hubspot_defined: T::Boolean,
                    name: String,
                    portal_id: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
