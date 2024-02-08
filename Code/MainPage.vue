
<template>
  <ONavbar></ONavbar>

  <ORowContainer appContainer style="margin-bottom: 80px">
    <OModal ref="vModalRef" @hidden="resetModal">
      <div class="modal-dialog">
        <form class="modal-content" @submit.prevent="saveShoppingListItem">
          <div class="modal-header">
            <h5 class="modal-title">
              {{ vCreateNewRef ? $t("New Item") : $t("Edit Item") }}
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div class="form-check form-switch">
              <input
                class="form-check-input"
                type="checkbox"
                id="new-item-checkbox"
                v-model="vNewItemCheckRef"
              />
              <label class="form-check-label" for="new-item-checkbox">
                {{ $t('Create New Item') }}
              </label>
            </div>
            <div class="row">
              <OFormControl
                class="col-12"
                :title="$t('Item:')"
                for="item-field"
              >
                <input
                  type="text"
                  v-if="vNewItemCheckRef"
                  v-model="vItemNameRef"
                  class="form-control form-control-lg"
                />
                <ODataLookup
                  :dataObject="dsGoodsLkp"
                  v-else
                  required
                  title=""
                  v-model="vItemNameRef"
                  focusField="Name"
                  class="form-select form-select-lg"
                  :bind="
                    (sel) => {
                      vItemNameRef = sel.Name;
                      vItem_IDRef = sel.ID;
                    }
                  "
                >
                  <OColumn
                    v-if="!isMobile"
                    field="ImageUrl"
                    width="40"
                    headerName=""
                    v-slot="{ row }"
                  >
                    <img
                      loading="lazy"
                      style="width: 1.5rem; height: 1.5rem"
                      :src="row.ImageUrl"
                      class="rounded-circle img-fluid"
                    />
                  </OColumn>
                  <OColumn field="Name" width="400" />
                </ODataLookup>
              </OFormControl>
            </div>
            <div class="row">
              <OFormControl
                class="col-8"
                :title="$t('Amount:')"
                for="amount-field"
              >
                <div class="input-group input-group-lg">
                  <input
                    type="text"
                    id="amount-field"
                    name="amount"
                    v-model.number="vAmountRef"
                    class="form-control"
                  />
                  <button
                    class="btn btn-secondary"
                    type="button"
                    @click="alterAmount(-1)"
                  >
                    <i class="bi bi-dash-lg"></i>
                  </button>
                  <button
                    class="btn btn-secondary"
                    type="button"
                    @click="alterAmount(+1)"
                  >
                    <i class="bi bi-plus-lg"></i>
                  </button>
                </div>
              </OFormControl>
              <OFormControl class="col-4" :title="$t('Unit:')" for="unit-field">
                <input
                  type="text"
                  id="unit-field"
                  name="unit"
                  class="form-control form-control-lg"
                  list="list-units"
                  v-model="vUnitRef"
                />
                <datalist id="list-units">
                  <option>Piece</option>
                  <option>Sack</option>
                  <option>Liter</option>
                  <option>Bag</option>
                  <option>Slice</option>
                </datalist>
              </OFormControl>
            </div>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              {{ $t("Close") }}
            </button>
            <button type="submit" class="btn btn-primary">
              {{ vCreateNewRef ? $t("Create") : $t("Save") }}
            </button>
          </div>
        </form>
      </div>
    </OModal>
    <!-- Modal End -->

    <div class="card">
      <div class="card-body">
        <div class="d-flex align-items-center gap-3 mb-1">
          <a
            class="btn btn-secondary"
            type="button"
            href="/nt/aShoppingLists"
          >
            <i class="bi bi-arrow-left"></i>
            {{ $t("Go back") }}
          </a>
          <h5 class="card-title">{{ dsShoppingLists.current.Name }}</h5>
        </div>

        <SearchInput debounce class="force-input-rounded" @onSearch="handleSearch" />
      </div>
      <div class="accordion accordion-flush h-100 overflow-scroll">
        <div
          class="accordion-item"
          v-for="(vValue, vKey, vIndex) in groupBy(
            dsShoppingListsItems.data,
            'ItemCategory',
          )"
          :id="`accordion-${vIndex}`"
          :key="vIndex"
        >
          <h2 class="accordion-header" :id="`panel-${vKey}-header`">
            <button
              class="accordion-button"
              type="button"
              data-bs-toggle="collapse"
              :data-bs-target="`#panel-${vKey}`"
              aria-expanded="true"
              :aria-controls="`panel-${vKey}`"
            >
              <svg
                class="rounded-circle border border-success checkmark me-2"
                style="aspect-ratio: 1"
                :class="[
                  { 'opacity-100': vValue.every((vItem) => vItem.Checked) },
                  'opacity-0',
                ]"
                viewBox="0 0 150 150"
              >
                <path d="M35,75 L65,105 L120,45" />
              </svg>

              <div
                class="d-flex justify-content-between align-items-center w-100"
              >
                <span>{{ vKey }}</span>
                <span class="badge bg-primary rounded-pill me-3">{{
                  vValue.length
                }}</span>
              </div>
            </button>
          </h2>
          <div
            :id="`panel-${vKey}`"
            class="accordion-collapse collapse show"
            :aria-labelledby="`panel-${vKey}-header`"
          >
            <ul class="list-group list-group-flush">
              <!-- List Item Start-->
              <li
                v-for="(vItem, vItemIndex) in vValue"
                class="list-group-item d-flex justify-content-between gap-3 align-items-center"
                :key="vItemIndex"
              >
                <div
                  class="form-check d-flex flex-row align-items-center gap-2 flex-grow-1"
                >
                  <input
                    class="form-check-input p-3"
                    type="checkbox"
                    v-model="vItem.Checked"
                    :id="`checkout-${vItem.Item_ID}`"
                    @change="checkItem(vItem.index)"
                  />

                  <label :for="`checkout-${vItem.Item_ID}`">
                    <img
                      :src="vItem.ItemImage"
                      class="img-fluid img-thumbnail"
                      style="max-width: 50px"
                    />
                  </label>

                  <label
                    class="form-check-label d-flex flex-column"
                    :for="`checkout-${vItem.Item_ID}`"
                    :data-content="vItem.ItemName"
                  >
                    <span>{{ vItem.ItemName }}</span>
                    <small class="text-muted"
                      >{{ vItem.Amount }} {{ vItem.Unit }}</small
                    >
                  </label>
                </div>

                <div class="dropdown">
                  <button
                    class="btn"
                    type="button"
                    :id="`menu-${vItem.Item_ID}`"
                    data-bs-toggle="dropdown"
                    aria-expanded="false"
                  >
                    <i class="bi bi-three-dots"></i>
                  </button>
                  <ul
                    class="dropdown-menu"
                    :aria-labelledby="`menu-${vItem.Item_ID}`"
                  >
                    <li>
                      <button
                        class="dropdown-item"
                        @click="openModal(vItem.index)"
                      >
                        <i class="bi bi-pencil"></i>
                        {{ $t("Edit") }}
                      </button>
                    </li>
                    <li>
                      <button class="dropdown-item" @click="deleteItem(vItem)">
                        <i class="bi bi-trash"></i>
                        {{ $t("Delete") }}
                      </button>
                    </li>
                  </ul>
                </div>
              </li>
              <!-- List Item End-->
            </ul>
          </div>
        </div>
      </div>
    </div>
  </ORowContainer>

  <nav
    class="navbar py-0 fixed-bottom navbar-dark bg-dark d-flex flex-column border-top border-secondary"
  >
    <div class="progress rounded-0 w-100">
      <div
        class="progress-bar bg-success"
        role="progressbar"
        :style="{ width: `${dsShoppingLists.current.PercentageCompleted}%` }"
        :aria-valuenow="dsShoppingLists.current.PercentageCompleted"
        aria-valuemin="0"
        aria-valuemax="100"
      >
        {{ dsShoppingLists.current.PercentageCompleted }}%
      </div>
    </div>

    <div class="row w-100">
      <div class="col" />
      <div class="col d-flex justify-content-center p-2">
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
      <div class="col d-flex justify-content-center p-2 align-items-center">
        <p
          class="text-light fw-bold mb-0"
          v-if="dsShoppingLists.current.ShoppingListItems > 0"
        >
          {{
            dsShoppingLists.current.ShoppingListItems -
            dsShoppingLists.current.ShoppingListItemsChecked
          }}
          / {{ dsShoppingLists.current.ShoppingListItems }}
          {{ $t("items left") }}
        </p>
      </div>
    </div>
  </nav>
</template>

<script setup>
import { ref, onMounted } from "vue";
import { isMobile } from "mobile.utils.ts";
import { getDataObjectById } from "o365.vue.ts";
import { getUserSession } from "o365.modules.configs.ts";
import ONavbar from "o365.vue.components.ONavbar.vue";
import OModal from "o365.vue.components.Modal.vue";
import alert from "o365.controls.alert.ts";
import SearchInput from "o365.vue.components.SearchInput.vue";
import OFormControl from "o365.vue.components.FormControl.vue";
import ORowContainer from "o365.vue.components.RowContainer.vue";

const vCreateNewRef = ref(false);
const vModalRef = ref(null);

const vItemNameRef = ref(null);
const vItem_IDRef = ref(null);
const vAmountRef = ref(1);
const vUnitRef = ref("Piece");
const vNewItemCheckRef = ref(false);

const dsShoppingLists = getDataObjectById("dsShoppingLists");
const dsShoppingListsItems = getDataObjectById("dsShoppingListsItems");
const dsGoodsLkp = getDataObjectById("dsGoodsLkp");

onMounted(() => {
  const vShoppingList_ID = new URLSearchParams(window.location.search).get("ID");

  dsShoppingLists.recordSource.whereClause = `ID = ${vShoppingList_ID}`;
  dsShoppingLists.load();

  dsGoodsLkp.load();
});

const groupBy = (array, key) => {
  return array.reduce((rv, x) => {
    (rv[x[key]] = rv[x[key]] || []).push(x);
    return rv;
  }, {});
};

const alterAmount = (pAmount) =>
  (vAmountRef.value = Math.min(
    Math.max(vAmountRef.value + pAmount, 1),
    1000000,
  ));

const handleSearch = (pSearchString) => {
  const vSearchItem = dsShoppingListsItems.filterObject.getItem("SearchColumn");
  if (vSearchItem) {
    vSearchItem.selectedValue = pSearchString;
    dsShoppingListsItems.filterObject.apply();
  }
};

const checkItem = (pIndex) => {
  dsShoppingListsItems.save();
  dsShoppingLists.refreshRow();

  const vAllItemsInCheckedCategory = Object.values(
    groupBy(dsShoppingListsItems.data, "ItemCategory"),
  ).find((vItems) => vItems.some((vItem) => vItem.index === pIndex));

  if (vAllItemsInCheckedCategory.every((vItem) => vItem.Checked)) {
    const vBSCollapse = new bootstrap.Collapse(
      `#panel-${vAllItemsInCheckedCategory[0].ItemCategory}`,
    ).hide();
  }
};

const openModal = async (pIndex) => {
  dsShoppingListsItems.setCurrentIndex(pIndex);

  vCreateNewRef.value = Boolean(pIndex < 0);
  vItem_IDRef.value = dsShoppingListsItems.current.Item_ID;
  vItemNameRef.value = dsShoppingListsItems.current.ItemName;
  vAmountRef.value = dsShoppingListsItems.current.Amount || 1;
  vUnitRef.value = dsShoppingListsItems.current.Unit || "Piece";

  await vModalRef.value.show();
};

const resetModal = () => {
  vItem_IDRef.value = null;
  vItemNameRef.value = null;
  vAmountRef.value = 1;
  vUnitRef.value = "Piece";

  vNewItemCheckRef.value = false;
};

const saveShoppingListItem = async (pEvent) => {
  if (vNewItemCheckRef.value) {
    const vUserSession = getUserSession();

    const vNewItem = dsGoodsLkp.createNew(
      {
        Name: vItemNameRef.value,
        User_ID: vUserSession.personId,
      },
      true,
    );
    await dsGoodsLkp.save();

    vItem_IDRef.value = vNewItem.ID;
  }

  if (vCreateNewRef.value) {
    vCreateNewRef.value = false;

    dsShoppingListsItems.createNew({
      Item_ID: vItem_IDRef.value,
      Unit: vUnitRef.value,
      Amount: vAmountRef.value,
    });

    alert($t("Shopping List Item Created"), "success", {
      autohide: true,
      delay: 3000,
    });
  } else {
    dsShoppingListsItems.current.Item_ID = vItem_IDRef.value;
    dsShoppingListsItems.current.ItemName = vItemNameRef.value;
    dsShoppingListsItems.current.Amount = vAmountRef.value;
    dsShoppingListsItems.current.Unit = vUnitRef.value;

    alert($t("Shopping List Item Updated"), "success", {
      autohide: true,
      delay: 3000,
    });
  }

  dsShoppingListsItems
    .save()
    .then(() => {
      dsShoppingListsItems.load();
    })
    .catch((pErr) => {
      console.error(pErr);
      alert(pErr);
    });
  vModalRef.value.hide();
};

const deleteItem = (pItem) => {
  if (confirm($t(`Do you want to remove "${pItem.ItemName}"?`))) {
    dsShoppingListsItems.deleteItem(pItem);
    dsShoppingListsItems.save();
  }
};
</script>

<style>
@keyframes drawCheck {
  0% {
    stroke-dashoffset: 100;
  }

  100% {
    stroke-dashoffset: 0;
  }
}

.checkmark {
  width: 30px;
  height: 30px;
  stroke: rgb(25, 135, 84);
  fill: none;
  stroke-width: 8;
  stroke-dasharray: 100;
  stroke-dashoffset: 100;
  animation: drawCheck 1s ease forwards;
}

input[type="checkbox"]:checked ~ label::before {
  clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
}

label::before {
  position: absolute;
  content: attr(data-content);
  clip-path: polygon(0 0, 0 0, 0% 100%, 0 100%);
  text-decoration: line-through;
  text-decoration-thickness: 2px;
  text-decoration-color: black;
  transition: clip-path 200ms cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.force-input-rounded {
  border-radius: 0.25rem !important;
}
</style>
