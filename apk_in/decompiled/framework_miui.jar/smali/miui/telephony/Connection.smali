.class public Lmiui/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput v0, Lmiui/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v0, 0x2

    sput v0, Lmiui/telephony/Connection;->PRESENTATION_RESTRICTED:I

    const/4 v0, 0x3

    sput v0, Lmiui/telephony/Connection;->PRESENTATION_UNKNOWN:I

    const/4 v0, 0x4

    sput v0, Lmiui/telephony/Connection;->PRESENTATION_PAYPHONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    const-string v0, ""

    .local v0, name:Ljava/lang/String;
    sget v1, Lmiui/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p0, v1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60c003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v1, Lmiui/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p0, v1, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60c003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60c003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
