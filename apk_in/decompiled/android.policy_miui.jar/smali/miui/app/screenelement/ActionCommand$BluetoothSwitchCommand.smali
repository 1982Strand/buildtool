.class Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;
.super Lmiui/app/screenelement/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothSwitchCommand"
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    const-string v0, "bluetooth_state"

    sget-object v1, Lmiui/app/screenelement/NotifierManager$NotifierType;->Bluetooth:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;-><init>(Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;Lmiui/app/screenelement/NotifierManager$NotifierType;)V

    new-instance v0, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    iput-boolean v2, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->update()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iput-boolean v3, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lmiui/app/screenelement/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iput-boolean v3, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    iput-boolean v2, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1
.end method

.method protected update()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_2
    invoke-virtual {p0, v0}, Lmiui/app/screenelement/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    goto :goto_0
.end method
