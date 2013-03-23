.class Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;
.super Lcom/android/internal/telephony/gsm/SpnOverride;
.source "MiuiSpnOverride.java"


# static fields
.field private static final SETTING_PREFIX:Ljava/lang/String; = "MOBILE_OPERATOR_NAME_"


# instance fields
.field private final mNumericEquivalencies:[Ljava/lang/String;

.field private final mNumericValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x606

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->mNumericValues:[Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->mNumericEquivalencies:[Ljava/lang/String;

    return-void
.end method

.method private getFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "carrier"

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOBILE_OPERATOR_NAME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "carrier"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->mNumericValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->mNumericValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getEquivalentOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "carrier"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->mNumericEquivalencies:[Ljava/lang/String;

    aget-object p1, v1, v0

    .end local p1
    :cond_0
    return-object p1
.end method

.method getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "carrier"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, result:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v2           #result:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/MiuiSpnOverrideImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    if-ltz v0, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x6060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, operatorNames:[Ljava/lang/String;
    aget-object v2, v1, v0

    goto :goto_0

    .end local v1           #operatorNames:[Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
