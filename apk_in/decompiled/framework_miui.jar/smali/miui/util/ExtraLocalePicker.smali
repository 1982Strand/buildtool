.class public Lmiui/util/ExtraLocalePicker;
.super Ljava/lang/Object;
.source "ExtraLocalePicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .locals 1
    .parameter "localeInfos"

    .prologue
    const-string v0, "en_US"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    const-string v0, "zh_TW"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    const-string v0, "zh_CN"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V
    .locals 5
    .parameter "localeInfos"
    .parameter "firstLocaleCode"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, localeCode:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_1

    .end local v3           #localeCode:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v3       #localeCode:Ljava/lang/String;
    :cond_1
    aget-object v2, p0, v0

    .local v2, locale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    move v1, v0

    .local v1, j:I
    :goto_2
    if-lez v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    aput-object v4, p0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    aput-object v2, p0, v4

    goto :goto_1

    .end local v1           #j:I
    .end local v2           #locale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
