.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SearchActionModeCallbackWrapper;
.super Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;
.source "PhoneWindow.java"

# interfaces
.implements Lmiui/v5/view/SearchActionMode$Callback;


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchActionModeCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .parameter
    .parameter "wrapped"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$SearchActionModeCallbackWrapper;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    return-void
.end method
