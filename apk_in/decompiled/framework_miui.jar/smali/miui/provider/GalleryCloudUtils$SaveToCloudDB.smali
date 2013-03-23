.class Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;
.super Ljava/lang/Object;
.source "GalleryCloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/GalleryCloudUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveToCloudDB"
.end annotation


# instance fields
.field public dateTaken:J

.field public fileName:Ljava/lang/String;

.field public groupId:I

.field public localFlag:I

.field public localGroupId:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public serverType:I

.field public sha1:Ljava/lang/String;

.field public size:J

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "size"
    .parameter "mimeType"
    .parameter "title"
    .parameter "fileName"
    .parameter "dateTaken"
    .parameter "groupId"
    .parameter "serverType"
    .parameter "localFlag"
    .parameter "localGroupId"
    .parameter "sha1"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    iput-wide p2, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->size:J

    iput-object p4, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->mimeType:Ljava/lang/String;

    iput-object p5, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->title:Ljava/lang/String;

    iput-object p6, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->fileName:Ljava/lang/String;

    iput-wide p7, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->dateTaken:J

    iput p9, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->groupId:I

    iput p10, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->serverType:I

    iput p11, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->localFlag:I

    iput-object p12, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->localGroupId:Ljava/lang/String;

    iput-object p13, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->sha1:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Lmiui/provider/GalleryCloudUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"

    .prologue
    invoke-direct/range {p0 .. p13}, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
