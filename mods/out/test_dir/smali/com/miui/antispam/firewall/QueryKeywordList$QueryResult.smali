.class public abstract Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;
.super Ljava/lang/Object;
.source "QueryKeywordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/QueryKeywordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QueryResult"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onResult(Landroid/database/Cursor;)V
.end method
