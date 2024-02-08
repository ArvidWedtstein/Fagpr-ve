<template>
  <ONavbar></ONavbar>

  <ORowContainer appContainer style="margin-bottom: 80px">
    <!-- Modal Start -->
    <OModal ref="vModalRef" @hidden="resetModal">
      <div class="modal-dialog">
        <form class="modal-content" @submit.prevent="saveShoppingList">
          <div class="modal-header">
            <h5 class="modal-title">
              {{ $t(vCreateNewRef ? 'New' : 'Edit') }}
              {{ $t("Shopping List") }}
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div class="row">
              <OFormControl
                class="col-12"
                :title="$t('Name:')"
                for="name-field"
              >
                <input
                  required
                  id="name-field"
                  name="name"
                  class="form-control form-control-lg"
                  :title="$t('Name')"
                  :value="dsShoppingLists.current.Name"
                />
              </OFormControl>
            </div>
            <div class="row">
              <OFormControl
                v-if="!vCreateNewRef"
                class="col-12"
                :title="$t('Shared With:')"
              >
                <ODataGrid
                  :dataObject="dsSharedWith"
                  hideMultiselectColumn
                  hideGridMenu
                  noFooter
                  hideActionColumn
                >
                  <OColumn
                    field="UpdatedBy_ID"
                    width="40"
                    headerName=""
                    disableMenu
                    :filter="false"
                  >
                    <template #default="{ row }">
                      <div class="profile-image-wrapper" v-if="!row.isError && !row.isNewRecord">
                        <PersonImage
                          :personId="row.SharedUser_ID"
                          class="profile-image rounded-circle img-fluid"
                        />
                      </div>
                    </template>
                  </OColumn>

                  <OColumn
                    field="Name"
                    width="240"
                    editable
                    sortable
                    required
                    flexWidth="90"
                    v-slot:editor="{ row }"
                  >
                    <OPersonsLookup
                      class="form-select"
                      title="Persons"
                      :whereClause="computedPersonsLkpWhereClause"
                      :bind="
                        (sel) => {
                          row.SharedUser_ID = sel.ID;
                          row.Name = sel.Name;
                        }
                      "
                      v-model="row.Name"
                    ></OPersonsLookup>
                  </OColumn>
                  <OColumn
                    field="ID"
                    width="40"
                    disableMenu
                    headerName=""
                    :filter="false"
                  >
                    <template #default="{ row }">
                      <button
                        v-if="(!row.isDirty && !row.isError && !row.isNewRecord) || row.isDeleting"
                        type="button"
                        :style="{ 'display': !row.hasChanges && !row.error && !row.isNewRecord ? '' : 'none' }"
                        class="btn btn-sm btn-danger bg-danger"
                        @click="dsSharedWith.deleteItem(row)"
                      >
                        <i class="bi bi-trash"></i>
                        <span class="visually-hidden">{{ $t("Delete") }}</span>
                      </button>
                    </template>
                  </OColumn>
                </ODataGrid>
              </OFormControl>
            </div>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
              @click="dsSharedWith.cancelChanges()"
            >
              {{ $t("Close") }}
            </button>
            <button
              type="submit"
              class="btn btn-primary"
              :disabled="dsShoppingLists.current.isSaving"
            >
              {{ vCreateNewRef ? $t("Create") : $t("Save") }}
            </button>
          </div>
        </form>
      </div>
    </OModal>
    <!-- Modal End -->

    <div class="card">
      <div class="card-body">
        <h5 class="card-title">
          {{
            $t(
              `Your Shopping ${pluralize(dsShoppingLists.data.length, "List", "s")}`,
            )
          }}:
        </h5>
        
        <SearchInput debounce class="force-input-rounded" @onSearch="handleSearch" />
      </div>
      <ul class="list-group h-100 overflow-scroll list-group-flush">
        <!-- List Item Start-->
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center"
          v-for="(vShoppingList, index) in dsShoppingLists.data"
          :key="index"
          :id="index"
        >
          <div class="d-flex gap-2 flex-grow-1 justify-content-between">
            <a
              :href="`/nt/aShoppingLists/aShoppingListsGoods?ID=${vShoppingList.ID}`"
            >
              <h6 class="mb-0">{{ vShoppingList.Name }}</h6>
              <div class="d-flex align-items-center">
                <small class="text-muted me-1">{{ $t("Shared With") }}:</small>
                <div
                  v-if="JSON.parse(vShoppingList.SharedWithJSON) !== null"
                  class="profile-image-wrapper border border-white"
                  v-for="(vPerson, vIndex) in JSON.parse(vShoppingList.SharedWithJSON)"
                  :key="vIndex"
                  :style="{ 'margin-left': vIndex === 0 ? 0 : '-8px' }"
                  :title="vPerson.Name"
                > 
                  <PersonImage
                    :personId="vPerson.Person_ID"
                    class="profile-image"
                  />
                </div>
                <small v-else class="text-muted">{{ $t("None") }}</small>
              </div>
              <div
                class="mt-1 text-muted d-flex align-items-center gap-1"
                style="font-size: 0.75rem"
              >
                <div class="profile-image-wrapper border border-white">
                  <PersonImage
                    class="profile-image"
                    :personId="vShoppingList.CreatedBy_ID"
                  />
                </div>
                <span>
                  {{ vShoppingList.CreatedByName }}
                </span>

                <span v-if="vShoppingList.ShoppingListItems > 0"> • </span>
                <span
                  v-if="
                    vShoppingList.ShoppingListItems > 0 &&
                    vShoppingList.ShoppingListItemsChecked === 0
                  "
                >
                  {{
                    pluralize(
                      vShoppingList.ShoppingListItems,
                      "Item",
                      "s",
                      true,
                    )
                  }}
                </span>
                <span
                  v-if="
                    vShoppingList.ShoppingListItems > 0 &&
                    vShoppingList.ShoppingListItemsChecked > 0
                  "
                >
                  {{
                    pluralize(
                      vShoppingList.ShoppingListItems -
                        vShoppingList.ShoppingListItemsChecked,
                      "Item",
                      "s",
                      true,
                    )
                  }}
                  {{ $t("Remaining") }}
                </span>
              </div>
            </a>
            <div>
              <small class="opacity-50 text-nowrap">{{
                daysAgo(vShoppingList.Created)
              }}</small>
              <div class="dropdown d-flex">
                <button
                  class="btn ms-auto"
                  type="button"
                  id="Menu"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  <i class="bi bi-three-dots"></i>
                </button>
                <ul class="dropdown-menu" aria-labelledby="Menu">
                  <li>
                    <button class="dropdown-item" @click="openModal(index)">
                      <i class="bi bi-pencil"></i>
                      {{ $t("Edit") }}
                    </button>
                  </li>
                  <li>
                    <button
                      class="dropdown-item"
                      @click="deleteShoppingList(vShoppingList)"
                    >
                      <i class="bi bi-trash"></i>
                      {{ $t("Delete") }}
                    </button>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </li>
        <!-- List Item End-->
      </ul>
    </div>
  </ORowContainer>

  <nav
    class="navbar py-0 fixed-bottom navbar-dark bg-dark d-flex flex-column border-top border-secondary"
  >
    <div class="row w-100 d-flex justify-content-center p-2">
      <button
        type="button"
        class="btn btn-lg btn-primary rounded-circle"
        style="width: 55px; height: 55px"
        @click="openModal(-1)"
      >
        <i class="bi bi-plus-lg"></i>
        <span class="visually-hidden">{{ $t("New") }}</span>
      </button>
    </div>
  </nav>
</template>

<script setup>
import alert from "o365.controls.alert.ts";
import { ref, onMounted, computed } from "vue";
import { getDataObjectById } from "o365.vue.ts";
import SearchInput from "o365.vue.components.SearchInput.vue";
import PersonImage from "system.vue.components.PersonImage.vue";
import OFormControl from "o365.vue.components.FormControl.vue";
import OPersonsLookup from "o365.vue.components.PersonsLookup.vue";
import ORowContainer from "o365.vue.components.RowContainer.vue";
import ODataGrid from "o365.vue.components.DataGrid.vue";
import ONavbar from "o365.vue.components.ONavbar.vue";
import OModal from "o365.vue.components.Modal.vue";

const dsShoppingLists = getDataObjectById("dsShoppingLists");
const dsSharedWith = getDataObjectById("dsSharedWith");

const vModalRef = ref(null);
const vCreateNewRef = ref(false);

onMounted(() => {
  dsShoppingLists.load();
});

const computedPersonsLkpWhereClause = computed(() => {
    const vCreatedBy_ID = dsShoppingLists.current.CreatedBy_ID;
    const vSharedWith_IDs = JSON.parse(dsShoppingLists.current.SharedWithJSON).map(person => person.Person_ID);

    return `NOT (ID IN (${[vCreatedBy_ID, ...vSharedWith_IDs].join(", ")}))`;
});

const openModal = async (pIndex) => {
  dsShoppingLists.setCurrentIndex(pIndex);
  dsShoppingLists.refreshRow(pIndex);

  vCreateNewRef.value = Boolean(pIndex < 0);

  await vModalRef.value.show();
};

const resetModal = () => {
  dsSharedWith.save();
  dsShoppingLists.save();
};

const saveShoppingList = async (pEvent) => {
  const vFormData = Object.fromEntries(new FormData(pEvent.target));

  if (vCreateNewRef.value) {
    vCreateNewRef.value = false;

    dsShoppingLists.createNew({ Name: vFormData.name });

    alert($t("New Shopping List Created"), "success", {
      autohide: true,
      delay: 3000,
    });
  } else {
    dsShoppingLists.current.Name = vFormData.name;
  }

  dsShoppingLists.save().then(() => {
    dsShoppingLists.load();
    vModalRef.value.hide();
  });
};

const deleteShoppingList = (pShoppingList) => {
  if (
    confirm(
      $t(`Do you want to delete the Shopping List "${pShoppingList.Name}"?`),
    )
  ) {
    dsShoppingLists.deleteItem(pShoppingList);
  }
};

// Util Functions
const handleSearch = (pSearchString) => {
  const vSearchItem = dsShoppingLists.filterObject.getItem("SearchColumn");
  if (vSearchItem) {
    vSearchItem.selectedValue = pSearchString;
    dsShoppingLists.filterObject.apply();
  }
};

const pluralize = (pCount, pNoun, pSuffix = "s", pIncludeNumber = false) =>
  `${pIncludeNumber ? pCount : ""} ${pNoun}${pCount !== 1 ? pSuffix : ""}`;

const daysAgo = (pDateString) => {
  const vRtf = new Intl.RelativeTimeFormat("en", { style: "short" });

  const vInputDate = new Date(pDateString);
  const vCurrentDate = new Date();

  const vDiffMs = vCurrentDate - vInputDate;

  const vSecondsAgo = Math.floor(vDiffMs / 1000);
  const vMinutesAgo = Math.floor(vSecondsAgo / 60);
  const vHoursAgo = Math.floor(vMinutesAgo / 60);
  const vDaysAgo = Math.floor(vHoursAgo / 24);

  if (vSecondsAgo < 60) {
    return $t("now");
  }
  if (vMinutesAgo < 60) {
    return vRtf.format(-vMinutesAgo, "minute");
  }
  if (vHoursAgo < 24) {
    return vRtf.format(-vHoursAgo, "hour");
  }
  return vRtf.format(-vDaysAgo, "day");
};
</script>

<style>
.profile-image-wrapper {
  width: 20px;
  height: 20px;
  border-radius: 50%;
  overflow: hidden;
}

.profile-image {
  width: 100%;
  height: auto;
  display: block;
}

.force-input-rounded {
  border-radius: 0.25rem !important;
}
</style>
