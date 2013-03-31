.class public Lcom/miui/antispam/firewall/FirewallTab;
.super Landroid/app/Activity;
.source "FirewallTab.java"


# instance fields
.field private mFragmentViewPagerChangeListener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;

.field private mQueryTarget:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/16 v0, 0x65

    iput v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mQueryTarget:I

    .line 34
    new-instance v0, Lcom/miui/antispam/firewall/FirewallTab$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/FirewallTab$1;-><init>(Lcom/miui/antispam/firewall/FirewallTab;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mFragmentViewPagerChangeListener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/FirewallTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallTab;->clearNotification()V

    return-void
.end method

.method private clearNotification()V
    .locals 2

    .prologue
    .line 192
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/FirewallTab;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 193
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x31e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 194
    return-void
.end method

.method private createFragments()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getMiuiActionBar()Lmiui/v5/app/MiuiActionBar;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiui/v5/app/MiuiActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 72
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mFragmentViewPagerChangeListener:Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;

    invoke-interface {v0, v1}, Lmiui/v5/app/MiuiActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V

    .line 74
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string v1, "query_target"

    iget v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mQueryTarget:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "show_detail"

    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string v1, "FirewallLogFragment"

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 78
    const-string v1, "BlackWhiteList"

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/antispam/firewall/BlackWhiteList;

    move-object v4, v7

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 79
    const-string v1, "RuleFragment"

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/antispam/firewall/RuleFragment;

    move-object v4, v7

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 80
    return-void
.end method

.method public static getNewBlockedMmsCount(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    .local v7, mmsCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    const-string v3, "(type=? OR type=?) AND read=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "0"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, cursor2:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 117
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 121
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_1
    return v7

    .line 121
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getNewBlockedPhoneCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, phoneCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    const-string v3, "type=? AND read=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "0"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 92
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 96
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    return v7

    .line 96
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static updateNotification(Landroid/content/Context;)V
    .locals 14
    .parameter

    .prologue
    const v6, 0x7f07005c

    const/16 v13, 0x31e

    .line 156
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 158
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/NotificationManager;

    .line 161
    const-string v0, "show_notification"

    invoke-static {v0}, Lcom/miui/antispam/firewall/SettingsData;->getBooleanData(Ljava/lang/String;)Z

    move-result v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    invoke-virtual {v9, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 189
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedPhoneCount(Landroid/content/Context;)I

    move-result v1

    .line 169
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedMmsCount(Landroid/content/Context;)I

    move-result v7

    .line 171
    if-nez v1, :cond_1

    if-nez v7, :cond_1

    .line 172
    invoke-virtual {v9, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 176
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f020004

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v10, 0x7f07005d

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v12

    const/4 v1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v1

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 186
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 188
    invoke-virtual {v9, v13, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static updateOnNotification(Landroid/content/Context;)V
    .locals 11
    .parameter

    .prologue
    const v6, 0x7f07005b

    const/16 v10, 0x31f

    .line 129
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/NotificationManager;

    .line 132
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v0

    .line 133
    const-string v1, "show_firewall_notification"

    invoke-static {v1}, Lcom/miui/antispam/firewall/SettingsData;->getBooleanData(Ljava/lang/String;)Z

    move-result v1

    .line 135
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 153
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f020003

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/miui/antispam/firewall/RuleFragment;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 150
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 152
    invoke-virtual {v9, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedPhoneCount(Landroid/content/Context;)I

    move-result v0

    .line 58
    .local v0, callCount:I
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedMmsCount(Landroid/content/Context;)I

    move-result v1

    .line 60
    .local v1, mmsCount:I
    if-lez v0, :cond_1

    .line 61
    const/16 v2, 0x65

    iput v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mQueryTarget:I

    .line 66
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallTab;->createFragments()V

    .line 67
    return-void

    .line 62
    :cond_1
    if-lez v1, :cond_0

    .line 63
    const/16 v2, 0x66

    iput v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mQueryTarget:I

    goto :goto_0
.end method
