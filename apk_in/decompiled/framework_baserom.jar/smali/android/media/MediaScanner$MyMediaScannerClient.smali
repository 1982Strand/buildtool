.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private isDrmConverted:Z

.field private isDrmFlag:Z

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCityID:J

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmPath:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mRecordingType:I

.field private mResolution:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mVideoLatitude:F

.field private mVideoLongitude:F

.field private mWeatherID:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmFlag:Z

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "data"
    .parameter "values"

    .prologue
    if-nez p1, :cond_1

    const-string v1, ""

    .local v1, s:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, idx:I
    if-ltz v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .end local v0           #idx:I
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "input"
    .parameter "expected"

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;
    .locals 43
    .parameter "entry"
    .parameter "ringtones"
    .parameter "dcfRingtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    if-nez v39, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v37

    .local v37, values:Landroid/content/ContentValues;
    const-string v39, "title"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .local v36, title:Ljava/lang/String;
    if-eqz v36, :cond_2

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_3

    :cond_2
    const-string v39, "_data"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v39, "title"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v39, "album"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, album:Ljava/lang/String;
    const-string v39, "<unknown>"

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    const-string v39, "_data"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v39, 0x2f

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v23

    .local v23, lastSlash:I
    if-ltz v23, :cond_5

    const/16 v29, 0x0

    .local v29, previousSlash:I
    :goto_0
    const/16 v39, 0x2f

    add-int/lit8 v40, v29, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v20

    .local v20, idx:I
    if-ltz v20, :cond_4

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_12

    :cond_4
    if-eqz v29, :cond_5

    add-int/lit8 v39, v29, 0x1

    move/from16 v0, v39

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v39, "album"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v20           #idx:I
    .end local v23           #lastSlash:I
    .end local v29           #previousSlash:I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v31, v0

    .local v31, rowId:J
    const-wide/16 v7, 0x0

    .local v7, beforeExifExtractingTime:J
    const-wide/16 v14, 0x0

    .local v14, exifExtractingTime:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v39

    if-eqz v39, :cond_14

    const-wide/16 v39, 0x0

    cmp-long v39, v31, v39

    if-eqz v39, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v39

    if-eqz v39, :cond_14

    :cond_6
    const-string v40, "is_ringtone"

    if-nez p2, :cond_7

    if-eqz p3, :cond_13

    :cond_7
    const/16 v39, 0x1

    :goto_1
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v39, "is_notification"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v39, "is_alarm"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v39, "is_music"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v39, "is_podcast"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v33

    .local v33, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v21

    .local v21, inserter:Landroid/media/MediaInserter;
    const-wide/16 v9, 0x0

    .local v9, bulkInserterTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v39, v0

    if-nez v39, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v39

    if-eqz v39, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v33

    :cond_9
    :goto_3
    const/16 v30, 0x0

    .local v30, result:Landroid/net/Uri;
    const/16 v26, 0x0

    .local v26, needToSetSettings:Z
    const-wide/16 v39, 0x0

    cmp-long v39, v31, v39

    if-nez v39, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v39

    if-eqz v39, :cond_a

    const-string v39, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v40, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v40 .. v40}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v39

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    move/from16 v18, v0

    .local v18, format:I
    if-nez v18, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v39 .. v40}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    :cond_b
    const-string v39, "format"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .end local v18           #format:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v39

    if-eqz v39, :cond_e

    if-eqz p4, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Z

    move-result v39

    if-nez v39, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v40, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_e

    :cond_d
    const/16 v26, 0x1

    :cond_e
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-eqz v21, :cond_f

    if-eqz v26, :cond_23

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$3008(Landroid/media/MediaScanner;)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v9

    invoke-static/range {v39 .. v41}, Landroid/media/MediaScanner;->access$3114(Landroid/media/MediaScanner;J)J

    if-eqz v30, :cond_10

    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    :cond_10
    :goto_6
    if-eqz v26, :cond_11

    if-eqz p4, :cond_2e

    const-string v39, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v39 .. v40}, Landroid/media/MediaScanner;->access$2302(Landroid/media/MediaScanner;Z)Z

    :cond_11
    :goto_7
    return-object v30

    .end local v7           #beforeExifExtractingTime:J
    .end local v9           #bulkInserterTime:J
    .end local v14           #exifExtractingTime:J
    .end local v21           #inserter:Landroid/media/MediaInserter;
    .end local v26           #needToSetSettings:Z
    .end local v30           #result:Landroid/net/Uri;
    .end local v31           #rowId:J
    .end local v33           #tableUri:Landroid/net/Uri;
    .restart local v20       #idx:I
    .restart local v23       #lastSlash:I
    .restart local v29       #previousSlash:I
    :cond_12
    move/from16 v29, v20

    goto/16 :goto_0

    .end local v20           #idx:I
    .end local v23           #lastSlash:I
    .end local v29           #previousSlash:I
    .restart local v7       #beforeExifExtractingTime:J
    .restart local v14       #exifExtractingTime:J
    .restart local v31       #rowId:J
    :cond_13
    const/16 v39, 0x0

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    const/16 v40, 0x20

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v39, v0

    if-nez v39, :cond_8

    const/16 v38, -0x1

    .local v38, width:I
    const/16 v19, -0x1

    .local v19, height:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v12, 0x0

    .local v12, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v13, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-direct {v13, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12           #exif:Landroid/media/ExifInterface;
    .local v13, exif:Landroid/media/ExifInterface;
    move-object v12, v13

    .end local v13           #exif:Landroid/media/ExifInterface;
    .restart local v12       #exif:Landroid/media/ExifInterface;
    :goto_8
    if-eqz v12, :cond_17

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .local v24, latlng:[F
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v39

    if-eqz v39, :cond_15

    const-string v39, "latitude"

    const/16 v40, 0x0

    aget v40, v24, v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v39, "longitude"

    const/16 v40, 0x1

    aget v40, v24, v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_15
    invoke-virtual {v12}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v34

    .local v34, time:J
    const-wide/16 v39, -0x1

    cmp-long v39, v34, v39

    if-eqz v39, :cond_1a

    const-string v39, "datetaken"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_16
    :goto_9
    const-string v39, "ImageWidth"

    const/16 v40, -0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v38

    const-string v39, "ImageLength"

    const/16 v40, -0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v19

    const-string v39, "Orientation"

    const/16 v40, -0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v27

    .local v27, orientation:I
    const/16 v39, -0x1

    move/from16 v0, v27

    move/from16 v1, v39

    if-eq v0, v1, :cond_17

    packed-switch v27, :pswitch_data_0

    :pswitch_0
    const/4 v11, 0x0

    .local v11, degree:I
    :goto_a
    const-string v39, "orientation"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .end local v11           #degree:I
    .end local v24           #latlng:[F
    .end local v27           #orientation:I
    .end local v34           #time:J
    :cond_17
    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_18

    const/16 v39, -0x1

    move/from16 v0, v19

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v39, v0

    if-lez v39, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move/from16 v39, v0

    if-lez v39, :cond_19

    const-string v39, "width"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v39, "height"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    sub-long v14, v39, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-static {v0, v14, v15}, Landroid/media/MediaScanner;->access$1714(Landroid/media/MediaScanner;J)J

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    const-string v40, "."

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    .local v22, lastDot:I
    if-lez v22, :cond_8

    const-wide/16 v39, 0x0

    cmp-long v39, v7, v39

    if-eqz v39, :cond_8

    const-wide/16 v39, 0x0

    cmp-long v39, v14, v39

    if-eqz v39, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    add-int/lit8 v40, v22, 0x1

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .local v16, extention:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/media/MediaScanner$FileParsingTime;

    .local v28, parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v28, :cond_1c

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .end local v16           #extention:Ljava/lang/String;
    .end local v22           #lastDot:I
    .end local v28           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    .restart local v24       #latlng:[F
    .restart local v34       #time:J
    :cond_1a
    invoke-virtual {v12}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v34

    const-wide/16 v39, -0x1

    cmp-long v39, v34, v39

    if-eqz v39, :cond_16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-wide/from16 v39, v0

    const-wide/16 v41, 0x3e8

    mul-long v39, v39, v41

    sub-long v39, v39, v34

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->abs(J)J

    move-result-wide v39

    const-wide/32 v41, 0x5265c00

    cmp-long v39, v39, v41

    if-ltz v39, :cond_16

    const-string v39, "datetaken"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_9

    .restart local v27       #orientation:I
    :pswitch_1
    const/16 v11, 0x5a

    .restart local v11       #degree:I
    goto/16 :goto_a

    .end local v11           #degree:I
    :pswitch_2
    const/16 v11, 0xb4

    .restart local v11       #degree:I
    goto/16 :goto_a

    .end local v11           #degree:I
    :pswitch_3
    const/16 v11, 0x10e

    .restart local v11       #degree:I
    goto/16 :goto_a

    .end local v11           #degree:I
    .end local v24           #latlng:[F
    .end local v27           #orientation:I
    .end local v34           #time:J
    :cond_1b
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_b

    .restart local v16       #extention:Ljava/lang/String;
    .restart local v22       #lastDot:I
    .restart local v28       #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v39

    new-instance v40, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14, v15}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .end local v12           #exif:Landroid/media/ExifInterface;
    .end local v16           #extention:Ljava/lang/String;
    .end local v19           #height:I
    .end local v22           #lastDot:I
    .end local v28           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    .end local v38           #width:I
    .restart local v9       #bulkInserterTime:J
    .restart local v21       #inserter:Landroid/media/MediaInserter;
    .restart local v33       #tableUri:Landroid/net/Uri;
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v39

    if-eqz v39, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v33

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v39

    if-eqz v39, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v33

    goto/16 :goto_3

    .restart local v26       #needToSetSettings:Z
    .restart local v30       #result:Landroid/net/Uri;
    :cond_1f
    if-eqz p2, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Z

    move-result v39

    if-nez v39, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v40, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_e

    :cond_20
    const/16 v26, 0x1

    goto/16 :goto_4

    :cond_21
    if-eqz p5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Z

    move-result v39

    if-nez v39, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v40, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_e

    :cond_22
    const/16 v26, 0x1

    goto/16 :goto_4

    :cond_23
    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    move/from16 v39, v0

    const/16 v40, 0x3001

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_24

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_5

    :cond_24
    move-object/from16 v0, v21

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_5

    :cond_25
    move-object/from16 v0, v33

    move-wide/from16 v1, v31

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v39

    if-nez v39, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v39

    if-nez v39, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v39

    if-eqz v39, :cond_27

    :cond_26
    const-string v39, "_data"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, _datafield:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .end local v5           #_datafield:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v39

    if-eqz v39, :cond_28

    const-string v39, "mini_thumb_magic"

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_28
    const-string v39, "_data"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/16 v25, 0x0

    .local v25, mediaType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v17

    .local v17, fileType:I
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v39

    if-eqz v39, :cond_2b

    const/16 v25, 0x2

    :cond_29
    :goto_c
    const-string v39, "media_type"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .end local v17           #fileType:I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$3208(Landroid/media/MediaScanner;)J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v39 .. v39}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    move-object/from16 v2, v37

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .restart local v17       #fileType:I
    :cond_2b
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v39

    if-eqz v39, :cond_2c

    const/16 v25, 0x3

    goto :goto_c

    :cond_2c
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v39

    if-eqz v39, :cond_2d

    const/16 v25, 0x1

    goto :goto_c

    :cond_2d
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v39

    if-eqz v39, :cond_29

    const/16 v25, 0x4

    goto :goto_c

    .end local v17           #fileType:I
    .end local v25           #mediaType:I
    :cond_2e
    if-eqz p2, :cond_2f

    const-string v39, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v39 .. v40}, Landroid/media/MediaScanner;->access$2502(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_7

    :cond_2f
    if-eqz p5, :cond_11

    const-string v39, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v33

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v39 .. v40}, Landroid/media/MediaScanner;->access$2702(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_7

    .end local v9           #bulkInserterTime:J
    .end local v21           #inserter:Landroid/media/MediaInserter;
    .end local v26           #needToSetSettings:Z
    .end local v30           #result:Landroid/net/Uri;
    .end local v33           #tableUri:Landroid/net/Uri;
    .restart local v12       #exif:Landroid/media/ExifInterface;
    .restart local v19       #height:I
    .restart local v38       #width:I
    :catch_0
    move-exception v39

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 21
    .parameter "path"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v17, v0

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static/range {v17 .. v17}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v17

    if-nez v17, :cond_1

    const/4 v14, 0x0

    :cond_0
    :goto_0
    return v14

    :cond_1
    const/4 v14, 0x0

    .local v14, resultFileType:I
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [I

    .local v12, mOutPermissions:[I
    const-string v17, "data/system/databases/drmdatabase.db"

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    const-string v17, "MediaScanner"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getFileTypeFromDrm drmdatabase.db :  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "data/system/databases/drmdatabase.db-journal"

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    const-string v17, "MediaScanner"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getFileTypeFromDrm drmdatabase.db-journal  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, ".dcf"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .local v9, isDCF:Z
    const-string v17, ".dm"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    .local v10, isDM:Z
    const-string v17, ".odf"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    .local v11, isODF:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v17, v0

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v17, v0

    new-instance v18, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v19, v0

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static/range {v17 .. v18}, Landroid/media/MediaScanner;->access$3402(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v17, v0

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v17

    if-nez v17, :cond_2

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_2
    if-eqz v10, :cond_5

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, downloadedDrmFileSize:Ljava/io/File;
    const-string v17, "MediaScanner"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getFileTypeFromDrm : drm file size: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/drm/DrmInfoRequest;

    const/16 v17, 0x7

    const-string v18, "application/vnd.oma.drm.content"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .local v5, drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    const-string v17, "drm_path"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v17, "status"

    const-string v18, "fail"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v17, v0

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    .local v4, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v4, :cond_3

    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_4

    :cond_3
    const-string v17, "MediaScanner"

    const-string v18, "::getDrmFileType() DrmInfoRequest.STATUS have NoV"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_4
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, status_req1:Ljava/lang/String;
    const-string v17, "success"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "drm_path"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .local v13, pathname_dest:Ljava/lang/Object;
    if-eqz v13, :cond_7

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, file2:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmFlag:Z

    .end local v3           #downloadedDrmFileSize:Ljava/io/File;
    .end local v4           #drmInfo:Landroid/drm/DrmInfo;
    .end local v5           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v8           #file2:Ljava/io/File;
    .end local v13           #pathname_dest:Ljava/lang/Object;
    .end local v15           #status_req1:Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v6, Landroid/drm/DrmInfoRequest;

    const/16 v17, 0x8

    const-string v18, "application/vnd.oma.drm.content"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .local v6, drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    const-string v17, "drm_path"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v17, v0

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v4

    .restart local v4       #drmInfo:Landroid/drm/DrmInfo;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, status_req2:Ljava/lang/String;
    const-string v17, "success"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v17, v0

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v17, v0

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, drmMimetype:Ljava/lang/String;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v7}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_0

    .end local v6           #drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    .end local v7           #drmMimetype:Ljava/lang/String;
    .end local v16           #status_req2:Ljava/lang/String;
    .restart local v3       #downloadedDrmFileSize:Ljava/io/File;
    .restart local v5       #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .restart local v15       #status_req1:Ljava/lang/String;
    :cond_6
    const-string v17, "MediaScanner"

    const-string v18, "Mediascanner::getFileTypeFromDrm :: acquireDrmInfo Fail"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    goto/16 :goto_0

    .restart local v13       #pathname_dest:Ljava/lang/Object;
    :cond_7
    const-string v17, "MediaScanner"

    const-string v18, "Mediascanner::getFileTypeFromDrm :: acquireDrmInfo_convert no file path"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v3           #downloadedDrmFileSize:Ljava/io/File;
    .end local v5           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v13           #pathname_dest:Ljava/lang/Object;
    .end local v15           #status_req1:Ljava/lang/String;
    .restart local v6       #drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    .restart local v16       #status_req2:Ljava/lang/String;
    :cond_8
    const-string v17, "MediaScanner"

    const-string v18, "Mediascanner::getFileTypeFromDrm ::acquireDrmInfo_register Fail"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    if-ne p2, v1, :cond_0

    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .local v0, isDCF:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    :goto_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .end local v0           #isDCF:Z
    :goto_1
    return-void

    .restart local v0       #isDCF:Z
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #isDCF:Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, map:Landroid/content/ContentValues;
    const-string v3, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_drm"

    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    .local v1, resolution:Ljava/lang/String;
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v3, :cond_0

    const-string v3, "width"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "height"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v4, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "duration"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_1

    const-string v3, "resolution"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "0x0"

    .local v2, sUnknownResolution:Ljava/lang/String;
    const-string v3, "resolution"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    .end local v2           #sUnknownResolution:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "weather_ID"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "city_ID"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "latitude"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "longitude"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    const-string v3, "<unknown>"

    goto :goto_0

    :cond_5
    const-string v3, "<unknown>"

    goto :goto_1

    :cond_6
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "album_artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "genre"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v3, :cond_7

    const-string v3, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    const-string v3, "track"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "duration"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "compilation"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "recordingtype"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_8
    const-string v3, "<unknown>"

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    const-string v3, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    if-nez p7, :cond_4

    if-nez p8, :cond_0

    #calls: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 p8, 0x1

    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .local v13, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_2

    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .end local v13           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_3
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .local v9, beforeMakeEntryTime:J
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .local v2, entry:Landroid/media/MediaScanner$FileEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-static {v3, v4, v5}, Landroid/media/MediaScanner;->access$314(Landroid/media/MediaScanner;J)J

    if-eqz v2, :cond_8

    iget-wide v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v11, p3, v3

    .local v11, delta:J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v11, v3

    if-gtz v3, :cond_5

    const-wide/16 v3, -0x1

    cmp-long v3, v11, v3

    if-gez v3, :cond_9

    :cond_5
    const/4 v14, 0x1

    .local v14, wasModified:Z
    :goto_1
    if-eqz v2, :cond_6

    if-eqz v14, :cond_7

    :cond_6
    if-eqz v14, :cond_a

    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    :cond_7
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :goto_3
    return-object v2

    .end local v11           #delta:J
    .end local v14           #wasModified:Z
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_8
    const-wide/16 v11, 0x0

    goto :goto_0

    .restart local v11       #delta:J
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .restart local v14       #wasModified:Z
    :cond_a
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_b

    const/16 v8, 0x3001

    :goto_4
    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    goto :goto_2

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto :goto_3
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaInserter;->clear()V

    :cond_0
    return-void
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 24
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    const/16 v21, 0x0

    .local v21, result:Landroid/net/Uri;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    :try_start_0
    invoke-virtual/range {v3 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v4

    .local v4, entry:Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    :cond_0
    if-eqz v4, :cond_2

    iget-boolean v3, v4, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_1

    if-eqz p8, :cond_2

    :cond_1
    if-eqz p9, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v21

    .end local v4           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_2
    :goto_0
    return-object v21

    .restart local v4       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .local v17, lowpath:Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    const/4 v5, 0x1

    .local v5, ringtones:Z
    :goto_1
    const-string v3, "SPR"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "/download/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a

    const-string v3, ".dcf"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v6, 0x1

    .local v6, dcfRingtones:Z
    :goto_2
    const-string v3, "/notifications/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_b

    const/4 v7, 0x1

    .local v7, notifications:Z
    :goto_3
    const-string v3, "/alarms/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    const/4 v8, 0x1

    .local v8, alarms:Z
    :goto_4
    const-string v3, "/podcasts/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const/4 v10, 0x1

    .local v10, podcasts:Z
    :goto_5
    const-string v3, "/music/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_4

    if-nez v5, :cond_e

    if-nez v7, :cond_e

    if-nez v8, :cond_e

    if-nez v10, :cond_e

    :cond_4
    const/4 v9, 0x1

    .local v9, music:Z
    :goto_6
    const-wide/16 v12, 0x0

    .local v12, beforeMetaParsingTime:J
    const-wide/16 v18, 0x0

    .local v18, metaParsingTime:J
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v18, v22, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/media/MediaScanner;->access$1014(Landroid/media/MediaScanner;J)J

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v11, 0x20

    if-eq v3, v11, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v18, v22, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/media/MediaScanner;->access$1114(Landroid/media/MediaScanner;J)J

    :cond_7
    const-string v3, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .local v16, lastDot:I
    if-lez v16, :cond_8

    const-wide/16 v22, 0x0

    cmp-long v3, v12, v22

    if-eqz v3, :cond_8

    const-wide/16 v22, 0x0

    cmp-long v3, v18, v22

    if-eqz v3, :cond_8

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .local v15, extention:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/MediaScanner$FileParsingTime;

    .local v20, parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v20, :cond_f

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v15           #extention:Ljava/lang/String;
    .end local v20           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_8
    :goto_7
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v21

    goto/16 :goto_0

    .end local v5           #ringtones:Z
    .end local v6           #dcfRingtones:Z
    .end local v7           #notifications:Z
    .end local v8           #alarms:Z
    .end local v9           #music:Z
    .end local v10           #podcasts:Z
    .end local v12           #beforeMetaParsingTime:J
    .end local v16           #lastDot:I
    .end local v18           #metaParsingTime:J
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    .restart local v5       #ringtones:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .restart local v6       #dcfRingtones:Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3

    .restart local v7       #notifications:Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    .restart local v8       #alarms:Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_5

    .restart local v10       #podcasts:Z
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_6

    .restart local v9       #music:Z
    .restart local v12       #beforeMetaParsingTime:J
    .restart local v15       #extention:Ljava/lang/String;
    .restart local v16       #lastDot:I
    .restart local v18       #metaParsingTime:J
    .restart local v20       #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v11, Landroid/media/MediaScanner$FileParsingTime;

    move-wide/from16 v0, v18

    invoke-direct {v11, v15, v0, v1}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .end local v4           #entry:Landroid/media/MediaScanner$FileEntry;
    .end local v5           #ringtones:Z
    .end local v6           #dcfRingtones:Z
    .end local v7           #notifications:Z
    .end local v8           #alarms:Z
    .end local v9           #music:Z
    .end local v10           #podcasts:Z
    .end local v12           #beforeMetaParsingTime:J
    .end local v15           #extention:Ljava/lang/String;
    .end local v16           #lastDot:I
    .end local v17           #lowpath:Ljava/lang/String;
    .end local v18           #metaParsingTime:J
    .end local v20           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :catch_0
    move-exception v14

    .local v14, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v11, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "genreTagValue"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, length:I
    if-lez v4, :cond_9

    const/4 v6, 0x0

    .local v6, parenthesized:Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v0           #c:C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, charAfterNumber:C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .local v2, genreIndex:S
    if-ltz v2, :cond_9

    invoke-static {}, Landroid/media/MediaScanner;->access$1400()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    invoke-static {}, Landroid/media/MediaScanner;->access$1400()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    :cond_7
    if-eq v2, v10, :cond_0

    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .local v7, ret:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    .end local v3           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    .end local v6           #parenthesized:Z
    .end local v7           #ret:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    goto :goto_0

    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    .restart local v3       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    .restart local v6       #parenthesized:Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .end local v2           #genreIndex:S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "title"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "title;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "artist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v4, "albumartist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "albumartist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "band"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "band;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v4, "album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "album;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v4, "composer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "composer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    :cond_a
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "genre"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "genre;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v4, "year"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "year;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    :cond_e
    const-string v4, "tracknumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "tracknumber;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .local v1, num:I
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .end local v1           #num:I
    :cond_10
    const-string v4, "discnumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "set"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "set;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .restart local v1       #num:I
    mul-int/lit16 v2, v1, 0x3e8

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .end local v1           #num:I
    :cond_12
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    :cond_13
    const-string v4, "writer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "writer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v4, "resolution"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "resolution"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    const-string v4, "compilation"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    :cond_18
    const-string v4, "isdrm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_19

    :goto_1
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_19
    move v2, v3

    goto :goto_1

    :cond_1a
    const-string v2, "width"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    :cond_1b
    const-string v2, "height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    :cond_1c
    const-string v2, "recordingtype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    goto/16 :goto_0

    :cond_1d
    const-string v2, "weather"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    goto/16 :goto_0

    :cond_1e
    const-string v2, "cityid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    goto/16 :goto_0

    :cond_1f
    const-string v2, "location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2d

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :cond_20
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    if-eqz p6, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$608(Landroid/media/MediaScanner;)J

    :goto_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$708(Landroid/media/MediaScanner;)J

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method