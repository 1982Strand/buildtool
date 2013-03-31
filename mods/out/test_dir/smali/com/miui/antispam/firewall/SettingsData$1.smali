.class final Lcom/miui/antispam/firewall/SettingsData$1;
.super Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;
.source "SettingsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/SettingsData;->readData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/antispam/firewall/SettingsData$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;-><init>()V

    return-void
.end method


# virtual methods
.method onResult(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 84
    invoke-static {p1}, Lcom/miui/antispam/firewall/SettingsData;->access$002(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 85
    iget-object v0, p0, Lcom/miui/antispam/firewall/SettingsData$1;->val$context:Landroid/content/Context;

    const-string v1, "filter_keywords"

    invoke-static {v0, v1, p1}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 86
    return-void
.end method
