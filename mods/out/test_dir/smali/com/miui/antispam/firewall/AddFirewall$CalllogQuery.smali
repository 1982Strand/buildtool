.class public Lcom/miui/antispam/firewall/AddFirewall$CalllogQuery;
.super Ljava/lang/Object;
.source "AddFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/AddFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalllogQuery"
.end annotation


# static fields
.field static final COLUMNS:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/antispam/firewall/AddFirewall$CalllogQuery;->URI:Landroid/net/Uri;

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "forwarded_call"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/antispam/firewall/AddFirewall$CalllogQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
