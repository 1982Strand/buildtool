.class public Lcom/miui/antispam/firewall/ActionSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "ActionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAction_call_1:Lmiui/preference/RadioButtonPreference;

.field private mAction_call_2:Lmiui/preference/RadioButtonPreference;

.field private mAction_call_3:Lmiui/preference/RadioButtonPreference;

.field private mAction_calls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mAction_ms_1:Lmiui/preference/RadioButtonPreference;

.field private mAction_ms_2:Lmiui/preference/RadioButtonPreference;

.field private mAction_ms_3:Lmiui/preference/RadioButtonPreference;

.field private mAction_mss:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    return-void
.end method

.method public static getActionSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 102
    const-string v2, "sms_action"

    invoke-static {v2}, Lcom/miui/antispam/firewall/SettingsData;->getIntData(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, smsAction:I
    const-string v2, "call_action"

    invoke-static {v2}, Lcom/miui/antispam/firewall/SettingsData;->getIntData(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, callAction:I
    packed-switch v0, :pswitch_data_0

    .line 127
    packed-switch v1, :pswitch_data_1

    .line 133
    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 107
    :pswitch_0
    packed-switch v1, :pswitch_data_2

    .line 113
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 109
    :pswitch_1
    const v2, 0x7f070025

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 111
    :pswitch_2
    const v2, 0x7f070026

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    :pswitch_3
    packed-switch v1, :pswitch_data_3

    .line 123
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    :pswitch_4
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 121
    :pswitch_5
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 129
    :pswitch_6
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 131
    :pswitch_7
    const v2, 0x7f07002c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 127
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 107
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 117
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private refreshPref()V
    .locals 3

    .prologue
    .line 63
    const-string v1, "call_action"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getIntData(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, index:I
    iget-object v1, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/antispam/firewall/ActionSettings;->setAction(Lmiui/preference/RadioButtonPreference;Ljava/util/ArrayList;)V

    .line 66
    const-string v1, "sms_action"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getIntData(Ljava/lang/String;)I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/antispam/firewall/ActionSettings;->setAction(Lmiui/preference/RadioButtonPreference;Ljava/util/ArrayList;)V

    .line 68
    return-void
.end method

.method private setAction(Lmiui/preference/RadioButtonPreference;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "preference"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/preference/RadioButtonPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/preference/RadioButtonPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/preference/RadioButtonPreference;>;"
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 73
    .local v1, item:Lmiui/preference/RadioButtonPreference;
    if-eq p1, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 75
    .end local v1           #item:Lmiui/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->addPreferencesFromResource(I)V

    .line 33
    const-string v2, "call_action_1"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_1:Lmiui/preference/RadioButtonPreference;

    .line 34
    const-string v2, "call_action_2"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_2:Lmiui/preference/RadioButtonPreference;

    .line 35
    const-string v2, "call_action_3"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_3:Lmiui/preference/RadioButtonPreference;

    .line 36
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_1:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_2:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_call_3:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v2, "ms_action_1"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_1:Lmiui/preference/RadioButtonPreference;

    .line 41
    const-string v2, "ms_action_2"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_2:Lmiui/preference/RadioButtonPreference;

    .line 42
    const-string v2, "ms_action_3"

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/ActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    iput-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_3:Lmiui/preference/RadioButtonPreference;

    .line 43
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_1:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_2:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_ms_3:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 48
    .local v1, item:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 51
    .end local v1           #item:Lmiui/preference/RadioButtonPreference;
    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 52
    .restart local v1       #item:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 54
    .end local v1           #item:Lmiui/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 79
    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_3

    move-object v1, p1

    .line 80
    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 81
    .local v1, radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    .end local v1           #radio:Lmiui/preference/RadioButtonPreference;
    :cond_0
    :goto_0
    return v2

    .line 83
    .restart local v1       #radio:Lmiui/preference/RadioButtonPreference;
    :cond_1
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/antispam/firewall/ActionSettings;->setAction(Lmiui/preference/RadioButtonPreference;Ljava/util/ArrayList;)V

    .line 84
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_calls:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 86
    .local v0, index:I
    const-string v2, "call_action"

    invoke-static {p0, v2, v0}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 98
    .end local v0           #index:I
    .end local v1           #radio:Lmiui/preference/RadioButtonPreference;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_2

    move-object v1, p1

    .line 89
    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 90
    .restart local v1       #radio:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    :cond_4
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/antispam/firewall/ActionSettings;->setAction(Lmiui/preference/RadioButtonPreference;Ljava/util/ArrayList;)V

    .line 93
    iget-object v2, p0, Lcom/miui/antispam/firewall/ActionSettings;->mAction_mss:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 95
    .restart local v0       #index:I
    const-string v2, "sms_action"

    invoke-static {p0, v2, v0}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 59
    invoke-direct {p0}, Lcom/miui/antispam/firewall/ActionSettings;->refreshPref()V

    .line 60
    return-void
.end method
