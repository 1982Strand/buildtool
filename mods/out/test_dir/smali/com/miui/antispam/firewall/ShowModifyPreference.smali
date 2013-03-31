.class public Lcom/miui/antispam/firewall/ShowModifyPreference;
.super Lmiui/preference/RadioButtonPreference;
.source "ShowModifyPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antispam/firewall/ShowModifyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/ShowModifyPreference;->setWidgetLayoutResource(I)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/ShowModifyPreference;)Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/antispam/firewall/ShowModifyPreference;->mListener:Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 40
    const v1, 0x7f09001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Lcom/miui/antispam/firewall/ShowModifyPreference$1;

    invoke-direct {v1, p0}, Lcom/miui/antispam/firewall/ShowModifyPreference$1;-><init>(Lcom/miui/antispam/firewall/ShowModifyPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_0
    return-void
.end method

.method setDetailClickListener(Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/miui/antispam/firewall/ShowModifyPreference;->mListener:Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;

    .line 24
    return-void
.end method
