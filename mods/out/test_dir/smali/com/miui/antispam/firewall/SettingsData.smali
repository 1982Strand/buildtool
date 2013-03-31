.class public Lcom/miui/antispam/firewall/SettingsData;
.super Ljava/lang/Object;
.source "SettingsData.java"


# static fields
.field private static sActionSummary:Ljava/lang/String;

.field private static sActivateKey:Ljava/lang/String;

.field private static sAntiPrivate:Z

.field private static sAntiStranger:Z

.field private static sCallAction:I

.field private static sEnableTimeLimit:Z

.field private static sFilterCursor:Landroid/database/Cursor;

.field private static sFilterSms:Z

.field private static sKey:Ljava/lang/String;

.field private static sShowNotification:Z

.field private static sShowOn:Z

.field private static sSmsAction:I

.field private static sTimeEnd:I

.field private static sTimeLimit:Ljava/lang/String;

.field private static sTimeStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    sput-object p0, Lcom/miui/antispam/firewall/SettingsData;->sFilterCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method public static getBooleanData(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, ret:Z
    const-string v1, "anti_stranger"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sAntiStranger:Z

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const-string v1, "anti_private"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sAntiPrivate:Z

    goto :goto_0

    .line 205
    :cond_2
    const-string v1, "fileter_sms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sFilterSms:Z

    goto :goto_0

    .line 207
    :cond_3
    const-string v1, "show_firewall_notification"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sShowOn:Z

    goto :goto_0

    .line 209
    :cond_4
    const-string v1, "show_notification"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sShowNotification:Z

    goto :goto_0

    .line 211
    :cond_5
    const-string v1, "enable_time_limit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sEnableTimeLimit:Z

    goto :goto_0
.end method

.method public static getIntData(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 219
    const/4 v0, -0x1

    .line 221
    .local v0, ret:I
    const-string v1, "time_start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    sget v0, Lcom/miui/antispam/firewall/SettingsData;->sTimeStart:I

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    const-string v1, "time_end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    sget v0, Lcom/miui/antispam/firewall/SettingsData;->sTimeEnd:I

    goto :goto_0

    .line 225
    :cond_2
    const-string v1, "sms_action"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    sget v0, Lcom/miui/antispam/firewall/SettingsData;->sSmsAction:I

    goto :goto_0

    .line 227
    :cond_3
    const-string v1, "call_action"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget v0, Lcom/miui/antispam/firewall/SettingsData;->sCallAction:I

    goto :goto_0
.end method

.method public static getStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 235
    const-string v0, ""

    .line 237
    .local v0, ret:Ljava/lang/String;
    const-string v1, "action_summary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    sget-object v0, Lcom/miui/antispam/firewall/SettingsData;->sActionSummary:Ljava/lang/String;

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :cond_1
    const-string v1, "time_limit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    sget-object v0, Lcom/miui/antispam/firewall/SettingsData;->sTimeLimit:Ljava/lang/String;

    goto :goto_0
.end method

.method public static open(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 60
    sput-object p0, Lcom/miui/antispam/firewall/SettingsData;->sKey:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static readData(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 64
    sget-object v2, Lcom/miui/antispam/firewall/SettingsData;->sKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "anti_stranger"

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getAntiStrangerEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/antispam/firewall/SettingsData;->sAntiStranger:Z

    .line 67
    const-string v2, "anti_private"

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getAntiPrivateEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/antispam/firewall/SettingsData;->sAntiPrivate:Z

    .line 68
    const-string v2, "fileter_sms"

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFilterSmsEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/antispam/firewall/SettingsData;->sFilterSms:Z

    .line 69
    const-string v2, "enable_time_limit"

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getTimeLimitEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/antispam/firewall/SettingsData;->sEnableTimeLimit:Z

    .line 71
    const-string v2, "show_firewall_notification"

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "fw_show_firewall_notification"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/antispam/firewall/SettingsData;->sShowOn:Z

    .line 72
    const-string v2, "show_notification"

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "fw_show_notification"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/antispam/firewall/SettingsData;->sShowNotification:Z

    .line 74
    const-string v2, "time_start"

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getStartTime(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/antispam/firewall/SettingsData;->sTimeStart:I

    .line 75
    const-string v2, "time_end"

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getEndTime(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/antispam/firewall/SettingsData;->sTimeEnd:I

    .line 76
    const-string v2, "sms_action"

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getSmsAct(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/antispam/firewall/SettingsData;->sSmsAction:I

    .line 77
    const-string v2, "call_action"

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getCallAct(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/miui/antispam/firewall/SettingsData;->sCallAction:I

    .line 79
    const-string v2, "filter_keywords"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, filter:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Lcom/miui/antispam/firewall/QueryKeywordList;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/antispam/firewall/QueryKeywordList;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/miui/antispam/firewall/SettingsData$1;

    invoke-direct {v3, p0}, Lcom/miui/antispam/firewall/SettingsData$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/miui/antispam/firewall/QueryKeywordList;->query(Lcom/miui/antispam/firewall/QueryKeywordList$QueryResult;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/miui/antispam/firewall/ActionSettings;->getActionSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/antispam/firewall/SettingsData;->sActionSummary:Ljava/lang/String;

    .line 91
    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/antispam/firewall/SettingsData;->sTimeLimit:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static setActivateKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 56
    sput-object p0, Lcom/miui/antispam/firewall/SettingsData;->sActivateKey:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static updateSettings(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 185
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sAntiStranger:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallHelper;->setAntiStrangerEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 186
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sAntiPrivate:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallHelper;->setAntiPrivateEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 187
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sFilterSms:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallHelper;->setFilterSmsEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 188
    sget-boolean v0, Lcom/miui/antispam/firewall/SettingsData;->sEnableTimeLimit:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallHelper;->setTimeLimitEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 190
    sget v0, Lcom/miui/antispam/firewall/SettingsData;->sTimeStart:I

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallHelper;->setStartTime(Landroid/content/Context;I)V

    .line 191
    sget v0, Lcom/miui/antispam/firewall/SettingsData;->sTimeEnd:I

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallHelper;->setEndTime(Landroid/content/Context;I)V

    .line 192
    sget v0, Lcom/miui/antispam/firewall/SettingsData;->sSmsAction:I

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallHelper;->setSmsAct(Landroid/content/Context;I)V

    .line 193
    sget v0, Lcom/miui/antispam/firewall/SettingsData;->sCallAction:I

    invoke-static {p0, v0}, Lcom/miui/antispam/firewall/FirewallHelper;->setCallAct(Landroid/content/Context;I)V

    .line 195
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method private static wrapKeywords(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 110
    const-string v2, ""

    .line 111
    .local v2, strKeywords:Ljava/lang/String;
    const/4 v0, 0x0

    .line 112
    .local v0, index:I
    if-eqz p0, :cond_2

    .line 113
    const/4 v3, -0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 114
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    if-lez v0, :cond_1

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    :cond_1
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v1           #str:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static writeData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "iValue"

    .prologue
    .line 163
    sget-object v0, Lcom/miui/antispam/firewall/SettingsData;->sKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    const-string v0, "time_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    sput p2, Lcom/miui/antispam/firewall/SettingsData;->sTimeStart:I

    .line 167
    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/firewall/SettingsData;->sTimeLimit:Ljava/lang/String;

    .line 179
    :cond_0
    :goto_0
    sget-object v0, Lcom/miui/antispam/firewall/SettingsData;->sKey:Ljava/lang/String;

    sget-object v1, Lcom/miui/antispam/firewall/SettingsData;->sActivateKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {p0}, Lcom/miui/antispam/firewall/SettingsData;->updateSettings(Landroid/content/Context;)V

    .line 182
    :cond_1
    return-void

    .line 168
    :cond_2
    const-string v0, "time_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    sput p2, Lcom/miui/antispam/firewall/SettingsData;->sTimeEnd:I

    .line 170
    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/firewall/SettingsData;->sTimeLimit:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_3
    const-string v0, "sms_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    sput p2, Lcom/miui/antispam/firewall/SettingsData;->sSmsAction:I

    .line 173
    invoke-static {p0}, Lcom/miui/antispam/firewall/ActionSettings;->getActionSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/firewall/SettingsData;->sActionSummary:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_4
    const-string v0, "call_action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sput p2, Lcom/miui/antispam/firewall/SettingsData;->sCallAction:I

    .line 176
    invoke-static {p0}, Lcom/miui/antispam/firewall/ActionSettings;->getActionSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/firewall/SettingsData;->sActionSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public static writeData(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "cursor"

    .prologue
    .line 130
    if-eqz p2, :cond_0

    .line 131
    const-string v1, "filter_keywords"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-static {p2}, Lcom/miui/antispam/firewall/SettingsData;->wrapKeywords(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, str:Ljava/lang/String;
    sget-object v1, Lcom/miui/antispam/firewall/SettingsData;->sKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    sput-object p2, Lcom/miui/antispam/firewall/SettingsData;->sFilterCursor:Landroid/database/Cursor;

    .line 137
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static writeData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "bValue"

    .prologue
    .line 140
    sget-object v0, Lcom/miui/antispam/firewall/SettingsData;->sKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    const-string v0, "anti_stranger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    sput-boolean p2, Lcom/miui/antispam/firewall/SettingsData;->sAntiStranger:Z

    .line 157
    :cond_0
    :goto_0
    sget-object v0, Lcom/miui/antispam/firewall/SettingsData;->sKey:Ljava/lang/String;

    sget-object v1, Lcom/miui/antispam/firewall/SettingsData;->sActivateKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-static {p0}, Lcom/miui/antispam/firewall/SettingsData;->updateSettings(Landroid/content/Context;)V

    .line 160
    :cond_1
    return-void

    .line 144
    :cond_2
    const-string v0, "anti_private"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    sput-boolean p2, Lcom/miui/antispam/firewall/SettingsData;->sAntiPrivate:Z

    goto :goto_0

    .line 146
    :cond_3
    const-string v0, "fileter_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    sput-boolean p2, Lcom/miui/antispam/firewall/SettingsData;->sFilterSms:Z

    goto :goto_0

    .line 148
    :cond_4
    const-string v0, "show_firewall_notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    sput-boolean p2, Lcom/miui/antispam/firewall/SettingsData;->sShowOn:Z

    goto :goto_0

    .line 150
    :cond_5
    const-string v0, "show_notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    sput-boolean p2, Lcom/miui/antispam/firewall/SettingsData;->sShowNotification:Z

    goto :goto_0

    .line 152
    :cond_6
    const-string v0, "enable_time_limit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sput-boolean p2, Lcom/miui/antispam/firewall/SettingsData;->sEnableTimeLimit:Z

    .line 154
    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/firewall/SettingsData;->sTimeLimit:Ljava/lang/String;

    goto :goto_0
.end method
