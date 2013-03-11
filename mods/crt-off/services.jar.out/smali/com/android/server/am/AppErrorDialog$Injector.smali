.class Lcom/android/server/am/AppErrorDialog$Injector;
.super Ljava/lang/Object;
.source "AppErrorDialog.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sendFcReport(Lcom/android/server/am/AppErrorDialog;Landroid/os/Message;)V
    .locals 5
    .parameter "dialog"
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/am/MiuiErrorReport;->sendFcErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Z)V

    .line 43
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
