.class public Lmiui/provider/GalleryCloudUtils;
.super Ljava/lang/Object;
.source "GalleryCloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/GalleryCloudUtils$1;,
        Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.gallery.cloud.provider"

.field public static final BASE_URI:Landroid/net/Uri; = null

.field public static final CLOUD_SETTING_URI:Landroid/net/Uri; = null

.field public static final CLOUD_URI:Landroid/net/Uri; = null

.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "extra_file_path"

.field public static final SAVE_TO_CLOUD_ACTION:Ljava/lang/String; = "com.miui.gallery.save_to_cloud_action"

.field private static final TAG:Ljava/lang/String; = "GalleryCloudUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "content://com.miui.gallery.cloud.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    sget-object v0, Lmiui/provider/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloud"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    sget-object v0, Lmiui/provider/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloudSetting"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static existXiaomiAccount(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .local v0, xiaomiAccount:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .local v0, accounts:[Landroid/accounts/Account;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v2, v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getMimeTypeByFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    invoke-static {p0}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, extention:Ljava/lang/String;
    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "image/jpeg"

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "image/png"

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static isGalleryCloudSyncable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static putExifIntToContentValues(Landroid/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "exifInterface"
    .parameter "exifkey"
    .parameter "values"
    .parameter "contentKey"

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;Z)V

    return-void
.end method

.method private static requestSync(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isSyncable"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->findXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .local v0, xiaomiAccount:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    const-string v1, "com.miui.gallery.cloud.provider"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static saveToCloudDB(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "filePath"
    .parameter "groupId"
    .parameter "serverType"
    .parameter "localGroupId"
    .parameter "localFlag"
    .parameter "sha1"

    .prologue
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lmiui/provider/GalleryCloudUtils;->saveToCloudDBWithoutSync(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static saveToCloudDBWithoutSync(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "filePath"
    .parameter "groupId"
    .parameter "serverType"
    .parameter "localFlag"
    .parameter "sha1"

    .prologue
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lmiui/provider/GalleryCloudUtils;->saveToCloudDBWithoutSync(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static saveToCloudDBWithoutSync(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "filePath"
    .parameter "groupId"
    .parameter "serverType"
    .parameter "localFlag"
    .parameter "localGroupId"
    .parameter "sha1"

    .prologue
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v17, file:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GalleryCloudUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/provider/GalleryCloudUtils;->getMimeTypeByFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v17 .. v17}, Lmiui/os/ExtraFileUtils;->getFileTitle(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v2 .. v16}, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Lmiui/provider/GalleryCloudUtils$1;)V

    .local v2, toSave:Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lmiui/provider/GalleryCloudUtils;->saveToCloudDBWithoutSync(Landroid/content/Context;Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;)V

    goto :goto_0
.end method

.method private static saveToCloudDBWithoutSync(Landroid/content/Context;Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;)V
    .locals 13
    .parameter "context"
    .parameter "toSave"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .local v5, start:J
    invoke-static {p0}, Lmiui/provider/GalleryCloudUtils;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v9, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-direct {v2, v9}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .local v2, exifInterface:Landroid/media/ExifInterface;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "groupId"

    iget v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->groupId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "serverType"

    iget v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->serverType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "localFlag"

    iget v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->localFlag:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "size"

    iget-wide v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->size:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "mimeType"

    iget-object v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "title"

    iget-object v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->title:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "fileName"

    iget-object v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dateTaken"

    iget-wide v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->dateTaken:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v9, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->localFlag:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    const-string v9, "microthumbfile"

    iget-object v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "thumbnailFile"

    iget-object v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v9, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->localGroupId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "localGroupId"

    iget-object v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->localGroupId:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v9, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "dateModified"

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    const-string v9, "localFile"

    iget-object v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ImageWidth"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v8

    .local v8, width:I
    const-string v9, "ImageLength"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, height:I
    if-lez v8, :cond_4

    if-gtz v4, :cond_5

    :cond_4
    iget-object v9, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-static {v9}, Lmiui/util/ImageUtils;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    const-string v9, "exifImageWidth"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "exifImageLength"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "exifOrientation"

    const-string v10, "Orientation"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "exifGPSLatitude"

    const-string v10, "GPSLatitude"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifGPSLongitude"

    const-string v10, "GPSLongitude"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifMake"

    const-string v10, "Make"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifModel"

    const-string v10, "Model"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "Flash"

    const-string v10, "exifFlash"

    invoke-static {v2, v9, v7, v10}, Lmiui/provider/GalleryCloudUtils;->putExifIntToContentValues(Landroid/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v9, "exifGPSLatitudeRef"

    const-string v10, "GPSLatitudeRef"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifGPSLongitudeRef"

    const-string v10, "GPSLongitudeRef"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifExposureTime"

    const-string v10, "ExposureTime"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifFNumber"

    const-string v10, "FNumber"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifISOSpeedRatings"

    const-string v10, "ISOSpeedRatings"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifGPSAltitude"

    const-string v10, "GPSAltitude"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "GPSAltitudeRef"

    const-string v10, "exifGPSAltitudeRef"

    invoke-static {v2, v9, v7, v10}, Lmiui/provider/GalleryCloudUtils;->putExifIntToContentValues(Landroid/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v9, "exifGPSTimeStamp"

    const-string v10, "GPSTimeStamp"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifGPSDateStamp"

    const-string v10, "GPSDateStamp"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "WhiteBalance"

    const-string v10, "exifWhiteBalance"

    invoke-static {v2, v9, v7, v10}, Lmiui/provider/GalleryCloudUtils;->putExifIntToContentValues(Landroid/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v9, "exifFocalLength"

    const-string v10, "FocalLength"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifGPSProcessingMethod"

    const-string v10, "GPSProcessingMethod"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "exifDateTime"

    const-string v10, "DateTime"

    invoke-virtual {v2, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->sha1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "sha1"

    iget-object v10, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->sha1:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_7

    const-string v9, "GalleryCloudUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveToCloudDB, insert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " into database error."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #exifInterface:Landroid/media/ExifInterface;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #height:I
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v8           #width:I
    :cond_7
    :goto_1
    const-string v9, "GalleryCloudUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "save to cloud db finished, time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    const-string v9, "GalleryCloudUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveToCloudDB, create "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ExifInterface error."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "GalleryCloudUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveToCloudDB failed:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
