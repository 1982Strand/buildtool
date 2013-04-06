.class public Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CircleMissedEventListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIsMissedCall:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/CircleMissedEventData;",
            ">;"
        }
    .end annotation
.end field

.field private m_inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "isMissedCall"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/CircleMissedEventData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/CircleMissedEventData;>;"
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mIsMissedCall:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->getItem(I)Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    if-nez p2, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mIsMissedCall:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v9, 0x109005b

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .local v7, view:Landroid/view/View;
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    .local v2, data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    if-eqz v2, :cond_0

    const v8, 0x10202fa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, contact_view:Landroid/widget/TextView;
    const v8, 0x1020063

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, date_view:Landroid/widget/TextView;
    iget-object v8, v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "HH:mm"

    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v4, dateFormatter:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    iget-wide v8, v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    .local v3, date:Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .local v6, time:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->mIsMissedCall:Z

    if-nez v8, :cond_0

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, content_view:Landroid/widget/TextView;
    iget-object v8, v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->content:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #contact_view:Landroid/widget/TextView;
    .end local v1           #content_view:Landroid/widget/TextView;
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormatter:Ljava/text/SimpleDateFormat;
    .end local v5           #date_view:Landroid/widget/TextView;
    .end local v6           #time:Ljava/lang/String;
    :cond_0
    return-object v7

    .end local v2           #data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    .end local v7           #view:Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v9, 0x109006c

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .restart local v7       #view:Landroid/view/View;
    goto :goto_0

    .end local v7           #view:Landroid/view/View;
    :cond_2
    move-object v7, p2

    .restart local v7       #view:Landroid/view/View;
    goto :goto_0
.end method
