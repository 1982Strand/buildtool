.class Lcom/android/server/AppWidgetServiceImpl$Injector;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isDuplicateWidgetId(Lcom/android/server/AppWidgetServiceImpl;I)Z
    .locals 3
    .parameter "impl"
    .parameter "appWidgetId"

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;

    .line 98
    .local v1, widgetId:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    iget v2, v1, Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;->appWidgetId:I

    if-ne v2, p1, :cond_0

    .line 99
    const/4 v2, 0x1

    .line 102
    .end local v1           #widgetId:Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
