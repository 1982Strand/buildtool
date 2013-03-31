.class public Lcom/miui/antispam/firewall/FirewallSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "FirewallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAction:Landroid/preference/PreferenceScreen;

.field private mAntiPrivate:Landroid/preference/CheckBoxPreference;

.field private mAntiStranger:Landroid/preference/CheckBoxPreference;

.field private mEnableTimeLimit:Landroid/preference/PreferenceScreen;

.field private mFilterSms:Landroid/preference/CheckBoxPreference;

.field private mShowNotification:Landroid/preference/CheckBoxPreference;

.field private mShowOn:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->addPreferencesFromResource(I)V

    .line 35
    const-string v1, "fw_action_settings"

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAction:Landroid/preference/PreferenceScreen;

    .line 37
    const-string v1, "fw_show_firewall_notification"

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    .line 38
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    const-string v1, "fw_show_notification"

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    .line 41
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    const-string v1, "anti_stranger_call"

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    .line 44
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v1, "anti_private_call"

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiPrivate:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiPrivate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v1, "filter_stranger_sms"

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    .line 50
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    const-string v1, "fw_enable_time_limit"

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableTimeLimit:Landroid/preference/PreferenceScreen;

    .line 54
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/antispam/firewall/SettingsData;->open(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/miui/antispam/firewall/SettingsData;->readData(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_1

    .line 81
    const-string v0, "show_firewall_notification"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 92
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 82
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_2

    .line 83
    const-string v0, "show_notification"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 84
    .restart local p2
    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_3

    .line 85
    const-string v0, "anti_stranger"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 86
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiPrivate:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_4

    .line 87
    const-string v0, "anti_private"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 88
    .restart local p2
    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_0

    .line 89
    const-string v0, "fileter_sms"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/antispam/firewall/SettingsData;->writeData(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallSettings;->updateUi()V

    .line 76
    return-void
.end method

.method updateUi()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    const-string v1, "anti_stranger"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getBooleanData(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiPrivate:Landroid/preference/CheckBoxPreference;

    const-string v1, "anti_private"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getBooleanData(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    const-string v1, "fileter_sms"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getBooleanData(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    const-string v1, "show_firewall_notification"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getBooleanData(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    const-string v1, "show_notification"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getBooleanData(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAction:Landroid/preference/PreferenceScreen;

    const-string v1, "action_summary"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableTimeLimit:Landroid/preference/PreferenceScreen;

    const-string v1, "time_limit"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
