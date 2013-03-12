.class public abstract Lmiui/app/screenelement/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# static fields
.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"


# instance fields
.field protected mLanguageCountrySuffix:Ljava/lang/String;

.field protected mLanguageSuffix:Ljava/lang/String;

.field protected mManifestName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "manifest.xml"

    iput-object v0, p0, Lmiui/app/screenelement/ResourceLoader;->mManifestName:Ljava/lang/String;

    return-void
.end method

.method private getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "folder"

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 181
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 168
    .restart local p1
    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    .line 172
    goto :goto_0

    .line 175
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    .line 178
    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 8
    .parameter "src"
    .parameter "opts"

    .prologue
    const/4 v5, 0x0

    .line 82
    const-string v6, "images"

    invoke-direct {p0, p1, v6}, Lmiui/app/screenelement/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, path:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v5

    .line 85
    :cond_1
    invoke-virtual {p0, v4}, Lmiui/app/screenelement/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 86
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 90
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .local v3, padding:Landroid/graphics/Rect;
    invoke-static {v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 92
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 96
    :goto_1
    if-eqz v2, :cond_0

    .line 98
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v6

    goto :goto_0

    .line 92
    :cond_2
    :try_start_2
    new-instance v6, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    invoke-direct {v6, v0, v3}, Lmiui/app/screenelement/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v6

    goto :goto_1

    .line 93
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #padding:Landroid/graphics/Rect;
    :catch_1
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v6, "ResourceLoader"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    if-eqz v2, :cond_0

    .line 98
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 99
    :catch_2
    move-exception v6

    goto :goto_0

    .line 96
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 98
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 100
    :cond_3
    :goto_2
    throw v5

    .line 99
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 12
    .parameter "src"

    .prologue
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x1

    new-array v5, v9, [J

    .line 49
    .local v5, olen:[J
    invoke-virtual {p0, p1, v5}, Lmiui/app/screenelement/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v3

    .line 50
    .local v3, is:Ljava/io/InputStream;
    if-nez v3, :cond_1

    move-object v4, v8

    .line 78
    :cond_0
    :goto_0
    return-object v4

    .line 53
    :cond_1
    const/high16 v0, 0x1

    .line 54
    .local v0, COUNT:I
    const/high16 v9, 0x1

    :try_start_0
    new-array v1, v9, [B

    .line 55
    .local v1, buff:[B
    new-instance v4, Landroid/os/MemoryFile;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    long-to-int v10, v10

    invoke-direct {v4, v9, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 56
    .local v4, mf:Landroid/os/MemoryFile;
    const/4 v6, -0x1

    .line 57
    .local v6, read:I
    const/4 v7, 0x0

    .line 58
    .local v7, start:I
    :goto_1
    const/4 v9, 0x0

    const/high16 v10, 0x1

    invoke-virtual {v3, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_2

    .line 59
    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9, v7, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 60
    add-int/2addr v7, v6

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v4}, Landroid/os/MemoryFile;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result v9

    if-lez v9, :cond_3

    .line 70
    if-eqz v3, :cond_0

    .line 72
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v8

    goto :goto_0

    .line 70
    :cond_3
    if-eqz v3, :cond_4

    .line 72
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v1           #buff:[B
    .end local v4           #mf:Landroid/os/MemoryFile;
    .end local v6           #read:I
    .end local v7           #start:I
    :cond_4
    :goto_2
    move-object v4, v8

    .line 78
    goto :goto_0

    .line 65
    :catch_1
    move-exception v2

    .line 66
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    if-eqz v3, :cond_4

    .line 72
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 73
    :catch_2
    move-exception v9

    goto :goto_2

    .line 67
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 68
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 70
    if-eqz v3, :cond_4

    .line 72
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 73
    :catch_4
    move-exception v9

    goto :goto_2

    .line 70
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_5

    .line 72
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 74
    :cond_5
    :goto_3
    throw v8

    .line 73
    .restart local v1       #buff:[B
    .restart local v4       #mf:Landroid/os/MemoryFile;
    .restart local v6       #read:I
    .restart local v7       #start:I
    :catch_5
    move-exception v9

    goto :goto_2

    .end local v1           #buff:[B
    .end local v4           #mf:Landroid/os/MemoryFile;
    .end local v6           #read:I
    .end local v7           #start:I
    :catch_6
    move-exception v9

    goto :goto_3
.end method

.method protected final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "path"

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/app/screenelement/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 108
    const/4 v5, 0x0

    .line 109
    .local v5, manifestName:Ljava/lang/String;
    iget-object v7, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 110
    iget-object v7, p0, Lmiui/app/screenelement/ResourceLoader;->mManifestName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v7, v8}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {p0, v5}, Lmiui/app/screenelement/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 112
    const/4 v5, 0x0

    .line 114
    :cond_0
    if-nez v5, :cond_1

    iget-object v7, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    iget-object v7, p0, Lmiui/app/screenelement/ResourceLoader;->mManifestName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v7, v8}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {p0, v5}, Lmiui/app/screenelement/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 117
    const/4 v5, 0x0

    .line 120
    :cond_1
    if-nez v5, :cond_2

    .line 121
    iget-object v5, p0, Lmiui/app/screenelement/ResourceLoader;->mManifestName:Ljava/lang/String;

    .line 124
    :cond_2
    invoke-virtual {p0, v5}, Lmiui/app/screenelement/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 125
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_4

    .line 152
    :cond_3
    :goto_0
    return-object v6

    .line 129
    :cond_4
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 130
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 131
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 132
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v6

    .line 144
    if-eqz v4, :cond_3

    .line 146
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v7

    goto :goto_0

    .line 133
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    :catch_1
    move-exception v3

    .line 134
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    if-eqz v4, :cond_3

    .line 146
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 147
    :catch_2
    move-exception v7

    goto :goto_0

    .line 135
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 136
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    if-eqz v4, :cond_3

    .line 146
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 147
    :catch_4
    move-exception v7

    goto :goto_0

    .line 137
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v3

    .line 138
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 144
    if-eqz v4, :cond_3

    .line 146
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 147
    :catch_6
    move-exception v7

    goto :goto_0

    .line 139
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_7
    move-exception v3

    .line 140
    .local v3, e:Lorg/xml/sax/SAXException;
    :try_start_8
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 144
    if-eqz v4, :cond_3

    .line 146
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_0

    .line 147
    :catch_8
    move-exception v7

    goto :goto_0

    .line 141
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_9
    move-exception v3

    .line 142
    .local v3, e:Ljava/lang/Exception;
    :try_start_a
    const-string v7, "ResourceLoader"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 144
    if-eqz v4, :cond_3

    .line 146
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_0

    .line 147
    :catch_a
    move-exception v7

    goto :goto_0

    .line 144
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 146
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 148
    :cond_5
    :goto_1
    throw v6

    .line 147
    :catch_b
    move-exception v7

    goto :goto_1
.end method

.method protected abstract resourceExists(Ljava/lang/String;)Z
.end method

.method public setLocal(Ljava/util/Locale;)Lmiui/app/screenelement/ResourceLoader;
    .locals 2
    .parameter "locale"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    iget-object v1, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    .line 44
    :cond_0
    return-object p0
.end method
