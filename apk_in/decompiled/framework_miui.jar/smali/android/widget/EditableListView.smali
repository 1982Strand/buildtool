.class public Landroid/widget/EditableListView;
.super Landroid/widget/ListView;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditableListView$DropDownMenu;,
        Landroid/widget/EditableListView$EditableModeCallback;,
        Landroid/widget/EditableListView$EditableModeWrapper;,
        Landroid/widget/EditableListView$EditableListViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditableListView"


# instance fields
.field private mIsUpdateBatchChecked:Z

.field private mKeepEditModeIfNoItemChecked:Z

.field private mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mShowCheckBoxInNoneEditMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/EditableListView$1;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/EditableListView$1;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$1;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/EditableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/EditableListView;->enterEditModeInner()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/EditableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/EditableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/EditableListView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/EditableListView;)Landroid/widget/EditableListView$EditableListViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    return-object v0
.end method

.method private enterEditModeInner()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method private getEnabledCount()I
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, start:I
    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v5

    sub-int v1, v4, v5

    .local v1, end:I
    const/4 v0, 0x0

    .local v0, count:I
    move v2, v3

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isValidPos(I)Z
    .locals 4
    .parameter "position"

    .prologue
    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, numHeaders:I
    iget-object v2, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    .local v0, count:I
    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateBatchChecked(Z)V
    .locals 10
    .parameter "checked"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/widget/EditableListView;->mChoiceMode:I

    const/4 v7, 0x3

    if-eq v4, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, numHeaders:I
    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v7

    sub-int v0, v4, v7

    .local v0, count:I
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v5

    .local v1, hasStableIds:Z
    :goto_1
    move v2, v3

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_7

    iget-object v4, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #hasStableIds:Z
    .end local v2           #i:I
    :cond_3
    move v1, v6

    goto :goto_1

    .restart local v1       #hasStableIds:Z
    .restart local v2       #i:I
    :cond_4
    if-eqz p1, :cond_5

    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    :goto_4
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v1, :cond_2

    if-eqz p1, :cond_6

    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v7, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/EditableListView;->mCheckedItemCount:I

    goto :goto_4

    :cond_6
    iget-object v4, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v7, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_3

    :cond_7
    iget-object v4, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    check-cast v4, Landroid/widget/EditableListView$EditableModeWrapper;

    iget-object v7, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4, v7, p1}, Landroid/widget/EditableListView$EditableModeWrapper;->onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V

    iget-boolean v4, p0, Landroid/widget/EditableListView;->mInLayout:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Landroid/widget/EditableListView;->mBlockLayoutRequests:Z

    if-nez v4, :cond_8

    iput-boolean v5, p0, Landroid/widget/EditableListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/EditableListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/EditableListView;->requestLayout()V

    :cond_8
    iput-boolean v6, p0, Landroid/widget/EditableListView;->mIsUpdateBatchChecked:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public checkAll()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/EditableListView;->updateBatchChecked(Z)V

    return-void
.end method

.method public checkNothing()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditableListView;->updateBatchChecked(Z)V

    return-void
.end method

.method public enterEditMode()V
    .locals 6

    .prologue
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    iget-object v1, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/EditableListView$EditableListViewListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    iget-boolean v0, p0, Landroid/widget/EditableListView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/EditableListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EditableListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/EditableListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/EditableListView;->requestLayout()V

    goto :goto_0
.end method

.method public exitEditMode()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public isAllChecked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/EditableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/EditableListView;->getEnabledCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/EditableListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemCheckedById(J)Z
    .locals 2
    .parameter "id"

    .prologue
    iget-object v1, p0, Landroid/widget/EditableListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, pos:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditableListView;->isItemChecked(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "isScrap"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/EditableListView;->mShowCheckBoxInNoneEditMode:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Landroid/widget/EditableListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-object v1

    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public setCheckBoxVisiableInNoneEditMode(Z)V
    .locals 0
    .parameter "show"

    .prologue
    iput-boolean p1, p0, Landroid/widget/EditableListView;->mShowCheckBoxInNoneEditMode:Z

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "value"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/EditableListView;->isValidPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setKeepExitModeIfNoItemChecked(Z)V
    .locals 0
    .parameter "keepEidtMode"

    .prologue
    iput-boolean p1, p0, Landroid/widget/EditableListView;->mKeepEditModeIfNoItemChecked:Z

    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    const-string v0, "EditableListView"

    const-string v1, "should use setMultiChoiceModeListener(final EditableListViewListener listener)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/EditableListView$EditableModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/EditableListView$EditableModeWrapper;-><init>(Landroid/widget/EditableListView;)V

    iput-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    :cond_0
    iput-object p1, p0, Landroid/widget/EditableListView;->mMultiChoiceModeListener:Landroid/widget/EditableListView$EditableListViewListener;

    iget-object v0, p0, Landroid/widget/EditableListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/EditableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    goto :goto_0
.end method
