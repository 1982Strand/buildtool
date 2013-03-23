.class Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;
.super Lmiui/app/screenelement/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiSwitchCommand"
.end annotation


# instance fields
.field private mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

.field private final mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    const-string v0, "wifi_state"

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->WifiState:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;-><init>(Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    new-instance v0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;-><init>(Lmiui/app/screenelement/ActionCommand$1;)V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;

    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->update()V

    new-instance v0, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/ActionCommand$StateTracker;->toggleState(Landroid/content/Context;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->update()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, change:Z
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    invoke-virtual {v1, v2, v3}, Lmiui/app/screenelement/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ActionCommand$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/app/screenelement/ScreenElementRoot;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmiui/app/screenelement/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;

    check-cast v0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;

    iget-boolean v0, v0, Lmiui/app/screenelement/ActionCommand$WifiStateTracker;->zConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/app/screenelement/ActionCommand$StateTracker;

    invoke-virtual {v1}, Lmiui/app/screenelement/ActionCommand$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    :cond_1
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
