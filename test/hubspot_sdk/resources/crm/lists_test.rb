# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::ListsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.lists.create(
        name: "name",
        object_type_id: "objectTypeId",
        processing_type: "processingType"
      )

    assert_pattern do
      response => HubSpotSDK::Crm::ListCreateResponse
    end

    assert_pattern do
      response => {
        list: HubSpotSDK::Crm::PublicObjectList
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.list

    assert_pattern do
      response => HubSpotSDK::Crm::ListsByIDResponse
    end

    assert_pattern do
      response => {
        lists: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicObjectList])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.delete("listId")

    assert_pattern do
      response => nil
    end
  end

  def test_add_and_remove_memberships_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.lists.add_and_remove_memberships(
        "listId",
        record_ids_to_add: ["string"],
        record_ids_to_remove: ["string"]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::MembershipsUpdateResponse
    end

    assert_pattern do
      response => {
        record_ids_missing: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        record_ids_removed: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        records_ids_added: ^(HubSpotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_add_memberships_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.add_memberships("listId", body: ["string"])

    assert_pattern do
      response => HubSpotSDK::Crm::MembershipsUpdateResponse
    end

    assert_pattern do
      response => {
        record_ids_missing: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        record_ids_removed: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        records_ids_added: ^(HubSpotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_add_memberships_from_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.add_memberships_from("sourceListId", list_id: "listId")

    assert_pattern do
      response => nil
    end
  end

  def test_batch_read_memberships_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.lists.batch_read_memberships(
        inputs: [
          {
            objectTypeId: "objectTypeId",
            recordId: "recordId"
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseRecordIDWithMemberships
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::RecordIDWithMemberships]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseRecordIDWithMemberships::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_folder_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.create_folder(name: "name")

    assert_pattern do
      response => HubSpotSDK::Crm::ListFolderCreateResponse
    end

    assert_pattern do
      response => {
        folder: HubSpotSDK::Crm::PublicListFolder
      }
    end
  end

  def test_create_id_mapping_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.create_id_mapping(body: ["string"])

    assert_pattern do
      response => HubSpotSDK::Crm::PublicBatchMigrationMapping
    end

    assert_pattern do
      response => {
        legacy_list_ids_to_ids_mapping: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicMigrationMapping]),
        missing_legacy_list_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_delete_folder
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.delete_folder("folderId")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_memberships
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.delete_memberships("listId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.get("listId")

    assert_pattern do
      response => HubSpotSDK::Crm::ListFetchResponse
    end

    assert_pattern do
      response => {
        list: HubSpotSDK::Crm::PublicObjectList
      }
    end
  end

  def test_get_by_object_type_and_name_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.get_by_object_type_and_name("listName", object_type_id: "objectTypeId")

    assert_pattern do
      response => HubSpotSDK::Crm::ListFetchResponse
    end

    assert_pattern do
      response => {
        list: HubSpotSDK::Crm::PublicObjectList
      }
    end
  end

  def test_get_id_mapping
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.get_id_mapping

    assert_pattern do
      response => HubSpotSDK::Crm::PublicMigrationMapping
    end

    assert_pattern do
      response => {
        legacy_list_id: String,
        list_id: String
      }
    end
  end

  def test_get_memberships_join_order
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.get_memberships_join_order("listId")

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Crm::JoinTimeAndRecordID
    end

    assert_pattern do
      row => {
        membership_timestamp: Time,
        record_id: String
      }
    end
  end

  def test_get_record_memberships_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.get_record_memberships("recordId", object_type_id: "objectTypeId")

    assert_pattern do
      response => HubSpotSDK::Crm::APICollectionResponseRecordListMembership
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::RecordListMembership]),
        paging: HubSpotSDK::Paging | nil,
        total: Integer | nil
      }
    end
  end

  def test_get_schedule_conversion
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.get_schedule_conversion("listId")

    assert_pattern do
      response => HubSpotSDK::Crm::PublicListConversionResponse
    end

    assert_pattern do
      response => {
        list_id: String,
        converted_at: Time | nil,
        requested_conversion_time: HubSpotSDK::Crm::PublicListConversionResponse::RequestedConversionTime | nil
      }
    end
  end

  def test_get_size_and_edits_history_between
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.get_size_and_edits_history_between("listId")

    assert_pattern do
      response => HubSpotSDK::Crm::ListSizeAndEditHistoryResponse
    end

    assert_pattern do
      response => {
        edit_history: ^(HubSpotSDK::Internal::Type::ArrayOf[Time]),
        size_history: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ListSizeDataPoint])
      }
    end
  end

  def test_list_by_search_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.lists.list_by_search(list_ids: ["string"], offset: 0, processing_types: ["string"])

    assert_pattern do
      response => HubSpotSDK::Crm::ListSearchResponse
    end

    assert_pattern do
      response => {
        has_more: HubSpotSDK::Internal::Type::Boolean,
        lists: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicObjectListSearchResult]),
        offset: Integer,
        total: Integer
      }
    end
  end

  def test_list_folders
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.list_folders

    assert_pattern do
      response => HubSpotSDK::Crm::ListFolderFetchResponse
    end

    assert_pattern do
      response => {
        folder: HubSpotSDK::Crm::PublicListFolder
      }
    end
  end

  def test_list_memberships
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.list_memberships("listId")

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Crm::JoinTimeAndRecordID
    end

    assert_pattern do
      row => {
        membership_timestamp: Time,
        record_id: String
      }
    end
  end

  def test_move_folder_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.move_folder("newParentFolderId", folder_id: "folderId")

    assert_pattern do
      response => HubSpotSDK::Crm::ListFolderFetchResponse
    end

    assert_pattern do
      response => {
        folder: HubSpotSDK::Crm::PublicListFolder
      }
    end
  end

  def test_move_list_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.move_list(list_id: "listId", new_folder_id: "newFolderId")

    assert_pattern do
      response => nil
    end
  end

  def test_remove_memberships_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.remove_memberships("listId", body: ["string"])

    assert_pattern do
      response => HubSpotSDK::Crm::MembershipsUpdateResponse
    end

    assert_pattern do
      response => {
        record_ids_missing: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        record_ids_removed: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        records_ids_added: ^(HubSpotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_rename_folder
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.rename_folder("folderId")

    assert_pattern do
      response => HubSpotSDK::Crm::ListFolderFetchResponse
    end

    assert_pattern do
      response => {
        folder: HubSpotSDK::Crm::PublicListFolder
      }
    end
  end

  def test_restore
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.restore("listId")

    assert_pattern do
      response => nil
    end
  end

  def test_schedule_conversion
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.schedule_conversion("listId")

    assert_pattern do
      response => nil
    end
  end

  def test_update_list_filters_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.lists.update_list_filters(
        "listId",
        filter_branch: {
          filterBranches: [
            {
              filterBranches: [
                {
                  filterBranches: [
                    {
                      filterBranches: [
                        {
                          filterBranches: [
                            {
                              eventTypeId: "eventTypeId",
                              filterBranches: [
                                {
                                  filterBranches: [
                                    {
                                      associationCategory: "associationCategory",
                                      associationTypeId: 0,
                                      filterBranches: [
                                        {
                                          filterBranches: [],
                                          filterBranchOperator: "filterBranchOperator",
                                          filterBranchType: :OR,
                                          filters: [
                                            {
                                              filterType: :PROPERTY,
                                              operation: {
                                                includeObjectsWithNoValueSet: true,
                                                operationType: :BOOL,
                                                operator: "operator",
                                                value: true
                                              },
                                              property: "property"
                                            }
                                          ]
                                        }
                                      ],
                                      filterBranchOperator: "filterBranchOperator",
                                      filterBranchType: :ASSOCIATION,
                                      filters: [
                                        {
                                          filterType: :PROPERTY,
                                          operation: {
                                            includeObjectsWithNoValueSet: true,
                                            operationType: :BOOL,
                                            operator: "operator",
                                            value: true
                                          },
                                          property: "property"
                                        }
                                      ],
                                      objectTypeId: "objectTypeId",
                                      operator: "operator"
                                    }
                                  ],
                                  filterBranchOperator: "filterBranchOperator",
                                  filterBranchType: :PROPERTY_ASSOCIATION,
                                  filters: [
                                    {
                                      filterType: :PROPERTY,
                                      operation: {
                                        includeObjectsWithNoValueSet: true,
                                        operationType: :BOOL,
                                        operator: "operator",
                                        value: true
                                      },
                                      property: "property"
                                    }
                                  ],
                                  objectTypeId: "objectTypeId",
                                  operator: "operator",
                                  propertyWithObjectId: "propertyWithObjectId"
                                }
                              ],
                              filterBranchOperator: "filterBranchOperator",
                              filterBranchType: :UNIFIED_EVENTS,
                              filters: [
                                {
                                  filterType: :PROPERTY,
                                  operation: {
                                    includeObjectsWithNoValueSet: true,
                                    operationType: :BOOL,
                                    operator: "operator",
                                    value: true
                                  },
                                  property: "property"
                                }
                              ],
                              operator: :HAS_COMPLETED
                            }
                          ],
                          filterBranchOperator: "filterBranchOperator",
                          filterBranchType: :RESTRICTED,
                          filters: [
                            {
                              filterType: :PROPERTY,
                              operation: {
                                includeObjectsWithNoValueSet: true,
                                operationType: :BOOL,
                                operator: "operator",
                                value: true
                              },
                              property: "property"
                            }
                          ]
                        }
                      ],
                      filterBranchOperator: "filterBranchOperator",
                      filterBranchType: :NOT_ANY,
                      filters: [
                        {
                          filterType: :PROPERTY,
                          operation: {
                            includeObjectsWithNoValueSet: true,
                            operationType: :BOOL,
                            operator: "operator",
                            value: true
                          },
                          property: "property"
                        }
                      ]
                    }
                  ],
                  filterBranchOperator: "filterBranchOperator",
                  filterBranchType: :NOT_ALL,
                  filters: [
                    {
                      filterType: :PROPERTY,
                      operation: {
                        includeObjectsWithNoValueSet: true,
                        operationType: :BOOL,
                        operator: "operator",
                        value: true
                      },
                      property: "property"
                    }
                  ]
                }
              ],
              filterBranchOperator: "filterBranchOperator",
              filterBranchType: :AND,
              filters: [
                {
                  filterType: :PROPERTY,
                  operation: {
                    includeObjectsWithNoValueSet: true,
                    operationType: :BOOL,
                    operator: "operator",
                    value: true
                  },
                  property: "property"
                }
              ]
            }
          ],
          filterBranchOperator: "filterBranchOperator",
          filterBranchType: :OR,
          filters: [
            {
              filterType: :PROPERTY,
              operation: {
                includeObjectsWithNoValueSet: true,
                operationType: :BOOL,
                operator: "operator",
                value: true
              },
              property: "property"
            }
          ]
        }
      )

    assert_pattern do
      response => HubSpotSDK::Crm::ListUpdateResponse
    end

    assert_pattern do
      response => {
        updated_list: HubSpotSDK::Crm::PublicObjectList | nil
      }
    end
  end

  def test_update_list_name
    skip("Mock server tests are disabled")

    response = @hubspot.crm.lists.update_list_name("listId")

    assert_pattern do
      response => HubSpotSDK::Crm::ListUpdateResponse
    end

    assert_pattern do
      response => {
        updated_list: HubSpotSDK::Crm::PublicObjectList | nil
      }
    end
  end

  def test_update_schedule_conversion_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.lists.update_schedule_conversion(
        "listId",
        public_list_conversion_time: {conversionType: :CONVERSION_DATE, day: 0, month: 0, year: 0}
      )

    assert_pattern do
      response => HubSpotSDK::Crm::PublicListConversionResponse
    end

    assert_pattern do
      response => {
        list_id: String,
        converted_at: Time | nil,
        requested_conversion_time: HubSpotSDK::Crm::PublicListConversionResponse::RequestedConversionTime | nil
      }
    end
  end
end
