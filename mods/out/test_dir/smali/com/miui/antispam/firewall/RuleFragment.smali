.class public Lcom/miui/antispam/firewall/RuleFragment;
.super Landroid/preference/PreferenceFragment;
.source "RuleFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;


# instance fields
.field private mCurItem:Lmiui/preference/RadioButtonPreference;

.field mPreferenceItems:[Lmiui/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mPreferenceItems:[Lmiui/preference/RadioButtonPreference;

    return-void
.end method

.method public static getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f070019

    .line 170
    const-string v1, "rule_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "rule_settings_cur_item"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, itemKey:Ljava/lang/String;
    const-string v1, "rule_action_reject_blacklist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 175
    :cond_0
    const-string v1, "rule_action_accept_whitelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_1
    const-string v1, "rule_action_reject_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 181
    :cond_2
    const-string v1, "rule_action_reject_stranger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRuleItem(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 190
    const-string v3, "rule_settings"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 191
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "rule_settings_cur_item"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, itemKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "firewall_option_key"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 194
    .local v1, opt:I
    packed-switch v1, :pswitch_data_0

    .line 211
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "rule_settings_cur_item"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    .end local v1           #opt:I
    :cond_0
    return-object v0

    .line 196
    .restart local v1       #opt:I
    :pswitch_0
    const-string v0, "rule_action_reject_blacklist"

    .line 197
    goto :goto_0

    .line 200
    :pswitch_1
    const-string v0, "rule_action_reject_stranger"

    .line 201
    goto :goto_0

    .line 204
    :pswitch_2
    const-string v0, "rule_action_accept_whitelist"

    .line 205
    goto :goto_0

    .line 208
    :pswitch_3
    const-string v0, "rule_action_reject_all"

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSettings(Landroid/preference/Preference;)V
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v0

    .line 108
    .local v0, enable:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rule_action_disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/antispam/firewall/FirewallHelper;->setFirewallEnalbed(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/antispam/firewall/FirewallHelper;->setFilterSmsEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 113
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    if-nez v0, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/antispam/firewall/FirewallHelper;->setFirewallEnalbed(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->open(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->readData(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->updateSettings(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rule_action_reject_blacklist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rule_action_reject_stranger"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 139
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rule_action_accept_whitelist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 147
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rule_action_reject_all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private updateUi(Lmiui/preference/RadioButtonPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mPreferenceItems:[Lmiui/preference/RadioButtonPreference;

    .local v0, arr$:[Lmiui/preference/RadioButtonPreference;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 161
    .local v2, item:Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 160
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 167
    .end local v2           #item:Lmiui/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v5, 0x7f040002

    invoke-virtual {p0, v5}, Lcom/miui/antispam/firewall/RuleFragment;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0, v7}, Lcom/miui/antispam/firewall/RuleFragment;->setHasOptionsMenu(Z)V

    .line 49
    iget-object v6, p0, Lcom/miui/antispam/firewall/RuleFragment;->mPreferenceItems:[Lmiui/preference/RadioButtonPreference;

    const-string v5, "rule_action_disable"

    invoke-virtual {p0, v5}, Lcom/miui/antispam/firewall/RuleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/RadioButtonPreference;

    aput-object v5, v6, v7

    .line 50
    iget-object v6, p0, Lcom/miui/antispam/firewall/RuleFragment;->mPreferenceItems:[Lmiui/preference/RadioButtonPreference;

    const/4 v7, 0x1

    const-string v5, "rule_action_reject_blacklist"

    invoke-virtual {p0, v5}, Lcom/miui/antispam/firewall/RuleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/RadioButtonPreference;

    aput-object v5, v6, v7

    .line 51
    iget-object v6, p0, Lcom/miui/antispam/firewall/RuleFragment;->mPreferenceItems:[Lmiui/preference/RadioButtonPreference;

    const/4 v7, 0x2

    const-string v5, "rule_action_reject_stranger"

    invoke-virtual {p0, v5}, Lcom/miui/antispam/firewall/RuleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/RadioButtonPreference;

    aput-object v5, v6, v7

    .line 52
    iget-object v6, p0, Lcom/miui/antispam/firewall/RuleFragment;->mPreferenceItems:[Lmiui/preference/RadioButtonPreference;

    const/4 v7, 0x3

    const-string v5, "rule_action_accept_whitelist"

    invoke-virtual {p0, v5}, Lcom/miui/antispam/firewall/RuleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/RadioButtonPreference;

    aput-object v5, v6, v7

    .line 53
    iget-object v6, p0, Lcom/miui/antispam/firewall/RuleFragment;->mPreferenceItems:[Lmiui/preference/RadioButtonPreference;

    const/4 v7, 0x4

    const-string v5, "rule_action_reject_all"

    invoke-virtual {p0, v5}, Lcom/miui/antispam/firewall/RuleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/RadioButtonPreference;

    aput-object v5, v6, v7

    .line 55
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/antispam/firewall/RuleFragment;->getRuleItem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, itemKey:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mPreferenceItems:[Lmiui/preference/RadioButtonPreference;

    .local v0, arr$:[Lmiui/preference/RadioButtonPreference;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 58
    .local v2, item:Lmiui/preference/RadioButtonPreference;
    instance-of v5, v2, Lcom/miui/antispam/firewall/ShowModifyPreference;

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 59
    check-cast v5, Lcom/miui/antispam/firewall/ShowModifyPreference;

    invoke-virtual {v5, p0}, Lcom/miui/antispam/firewall/ShowModifyPreference;->setDetailClickListener(Lcom/miui/antispam/firewall/ShowModifyPreference$OnDetailClickListener;)V

    .line 61
    :cond_0
    invoke-virtual {v2}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    iput-object v2, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    .line 64
    :cond_1
    invoke-virtual {v2, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v2           #item:Lmiui/preference/RadioButtonPreference;
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, root:Landroid/view/View;
    return-object v0
.end method

.method public onDetail(Landroid/preference/Preference;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/antispam/firewall/FirewallSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v1, "key"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/RuleFragment;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    if-eq p1, v0, :cond_0

    .line 89
    check-cast p1, Lmiui/preference/RadioButtonPreference;

    .end local p1
    iput-object p1, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    .line 90
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rule_settings"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rule_settings_cur_item"

    iget-object v2, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v2}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/RuleFragment;->updateUi(Lmiui/preference/RadioButtonPreference;)V

    .line 92
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/RuleFragment;->updateSettings(Landroid/preference/Preference;)V

    .line 93
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antispam/firewall/SettingsData;->setActivateKey(Ljava/lang/String;)V

    .line 95
    :cond_0
    return v3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/RuleFragment;->updateSettings(Landroid/preference/Preference;)V

    .line 73
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/RuleFragment;->updateUi(Lmiui/preference/RadioButtonPreference;)V

    .line 75
    iget-object v0, p0, Lcom/miui/antispam/firewall/RuleFragment;->mCurItem:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antispam/firewall/SettingsData;->setActivateKey(Ljava/lang/String;)V

    .line 76
    return-void
.end method
