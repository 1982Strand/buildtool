.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .local v0, in:Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0           #in:Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12
    .parameter "intent"
    .parameter "permission"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v11

    move-object v2, p0

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "ps"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 189
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .local v104, b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .local v14, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .local v15, options:Landroid/os/Bundle;
    :goto_2
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v165

    .local v165, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v165           #result:I
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v13           #profileFile:Ljava/lang/String;
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)Landroid/app/IActivityManager$WaitResult;

    move-result-object v165

    .local v165, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, v165

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v165           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v13           #profileFile:Ljava/lang/String;
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12       #startFlags:I
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .local v24, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_5
    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v25, v15

    invoke-virtual/range {v16 .. v25}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;)I

    move-result v165

    .local v165, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15           #options:Landroid/os/Bundle;
    .end local v165           #result:I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v24           #config:Landroid/content/res/Configuration;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .local v7, intent:Landroid/content/IntentSender;
    const/16 v28, 0x0

    .local v28, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #fillInIntent:Landroid/content/Intent;
    check-cast v28, Landroid/content/Intent;

    .restart local v28       #fillInIntent:Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .local v33, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .local v34, flagsValues:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_6
    move-object/from16 v25, p0

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move/from16 v32, v11

    move-object/from16 v35, v15

    invoke-virtual/range {v25 .. v35}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v165

    .restart local v165       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15           #options:Landroid/os/Bundle;
    .end local v165           #result:I
    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/IntentSender;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v28           #fillInIntent:Landroid/content/Intent;
    .end local v33           #flagsMask:I
    .end local v34           #flagsValues:I
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v108

    .local v108, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v1, v7, v15}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v165

    .local v165, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v165, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15           #options:Landroid/os/Bundle;
    .end local v165           #result:Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_7

    .restart local v15       #options:Landroid/os/Bundle;
    .restart local v165       #result:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .end local v7           #intent:Landroid/content/Intent;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v108           #callingActivity:Landroid/os/IBinder;
    .end local v165           #result:Z
    :sswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .local v49, token:Landroid/os/IBinder;
    const/16 v41, 0x0

    .local v41, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #resultData:Landroid/content/Intent;
    check-cast v41, Landroid/content/Intent;

    .restart local v41       #resultData:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v164

    .local v164, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_a

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v5, 0x0

    goto :goto_9

    .end local v40           #resultCode:I
    .end local v41           #resultData:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v164           #res:Z
    :sswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v10, v11}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_b

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x0

    goto :goto_a

    .end local v49           #token:Landroid/os/IBinder;
    .end local v164           #res:Z
    :sswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_c

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .end local v49           #token:Landroid/os/IBinder;
    .end local v164           #res:Z
    :sswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    if-eqz v104, :cond_d

    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    if-eqz v104, :cond_e

    invoke-static/range {v104 .. v104}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v19

    .local v19, rec:Landroid/content/IIntentReceiver;
    :goto_d
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentFilter;

    .local v20, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, perm:Ljava/lang/String;
    move-object/from16 v16, p0

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v21}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_f

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v20           #filter:Landroid/content/IntentFilter;
    .end local v21           #perm:Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    goto :goto_c

    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v18       #packageName:Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    goto :goto_d

    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v19       #rec:Landroid/content/IIntentReceiver;
    .restart local v20       #filter:Landroid/content/IntentFilter;
    .restart local v21       #perm:Ljava/lang/String;
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v20           #filter:Landroid/content/IntentFilter;
    .end local v21           #perm:Ljava/lang/String;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    if-nez v104, :cond_10

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-static/range {v104 .. v104}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v19

    .restart local v19       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    if-eqz v104, :cond_11

    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_f
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    if-eqz v104, :cond_12

    invoke-static/range {v104 .. v104}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v9

    .local v9, resultTo:Landroid/content/IIntentReceiver;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .local v41, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v42

    .local v42, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .restart local v21       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v44, 0x1

    .local v44, serialized:Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v45, 0x1

    .local v45, sticky:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, userId:I
    move-object/from16 v35, p0

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v43, v21

    invoke-virtual/range {v35 .. v46}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I

    move-result v164

    .local v164, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/content/IIntentReceiver;
    .end local v21           #perm:Ljava/lang/String;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    .end local v44           #serialized:Z
    .end local v45           #sticky:Z
    .end local v46           #userId:I
    .end local v164           #res:I
    :cond_11
    const/4 v6, 0x0

    goto :goto_f

    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    goto :goto_10

    .restart local v9       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v21       #perm:Ljava/lang/String;
    .restart local v40       #resultCode:I
    .restart local v41       #resultData:Ljava/lang/String;
    .restart local v42       #resultExtras:Landroid/os/Bundle;
    :cond_13
    const/16 v44, 0x0

    goto :goto_11

    .restart local v44       #serialized:Z
    :cond_14
    const/16 v45, 0x0

    goto :goto_12

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/content/IIntentReceiver;
    .end local v21           #perm:Ljava/lang/String;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    .end local v44           #serialized:Z
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    if-eqz v104, :cond_15

    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_13
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .restart local v46       #userId:I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v6, v7, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #userId:I
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .local v39, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .restart local v41       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v42

    .restart local v42       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v43, 0x1

    .local v43, resultAbort:Z
    :goto_14
    if-eqz v39, :cond_16

    move-object/from16 v38, p0

    invoke-virtual/range {v38 .. v43}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    :cond_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v43           #resultAbort:Z
    :cond_17
    const/16 v43, 0x0

    goto :goto_14

    .end local v39           #who:Landroid/os/IBinder;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    :sswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    :sswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    const/16 v24, 0x0

    .restart local v24       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #config:Landroid/content/res/Configuration;
    check-cast v24, Landroid/content/res/Configuration;

    .restart local v24       #config:Landroid/content/res/Configuration;
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v172, 0x1

    .local v172, stopProfiling:Z
    :goto_15
    if-eqz v49, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v24

    move/from16 v3, v172

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v172           #stopProfiling:Z
    :cond_1b
    const/16 v172, 0x0

    goto :goto_15

    .end local v24           #config:Landroid/content/res/Configuration;
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v136

    .local v136, map:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v180, v5

    .local v180, thumbnail:Landroid/graphics/Bitmap;
    :goto_16
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Ljava/lang/CharSequence;

    .local v115, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v136

    move-object/from16 v3, v180

    move-object/from16 v4, v115

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v115           #description:Ljava/lang/CharSequence;
    .end local v180           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1c
    const/16 v180, 0x0

    goto :goto_16

    .end local v49           #token:Landroid/os/IBinder;
    .end local v136           #map:Landroid/os/Bundle;
    :sswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    if-eqz v49, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v164

    .local v164, res:Ljava/lang/String;
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v164           #res:Ljava/lang/String;
    :cond_1d
    const/16 v164, 0x0

    goto :goto_17

    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v112

    .local v112, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, v112

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v112           #cn:Landroid/content/ComponentName;
    :sswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .local v138, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .local v59, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v160

    .local v160, receiverBinder:Landroid/os/IBinder;
    if-eqz v160, :cond_1e

    invoke-static/range {v160 .. v160}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v159

    .local v159, receiver:Landroid/app/IThumbnailReceiver;
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v138

    move/from16 v2, v59

    move-object/from16 v3, v159

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v130

    .local v130, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v130, :cond_1f

    invoke-interface/range {v130 .. v130}, Ljava/util/List;->size()I

    move-result v94

    .local v94, N:I
    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v121, 0x0

    .local v121, i:I
    :goto_1a
    move/from16 v0, v121

    move/from16 v1, v94

    if-ge v0, v1, :cond_20

    move-object/from16 v0, v130

    move/from16 v1, v121

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v124, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v121, v121, 0x1

    goto :goto_1a

    .end local v94           #N:I
    .end local v121           #i:I
    .end local v124           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v130           #list:Ljava/util/List;
    .end local v159           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_1e
    const/16 v159, 0x0

    goto :goto_18

    .restart local v130       #list:Ljava/util/List;
    .restart local v159       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_1f
    const/16 v94, -0x1

    goto :goto_19

    .restart local v94       #N:I
    .restart local v121       #i:I
    :cond_20
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v59           #fl:I
    .end local v94           #N:I
    .end local v121           #i:I
    .end local v130           #list:Ljava/util/List;
    .end local v138           #maxNum:I
    .end local v159           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v160           #receiverBinder:Landroid/os/IBinder;
    :sswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .restart local v138       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v138

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v132

    .local v132, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v59           #fl:I
    .end local v132           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v138           #maxNum:I
    :sswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .local v50, id:I
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v107

    .local v107, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v107, :cond_21

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1b
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .end local v50           #id:I
    .end local v107           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :sswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .restart local v138       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v138

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v130

    .restart local v130       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v130, :cond_22

    invoke-interface/range {v130 .. v130}, Ljava/util/List;->size()I

    move-result v94

    .restart local v94       #N:I
    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v121, 0x0

    .restart local v121       #i:I
    :goto_1d
    move/from16 v0, v121

    move/from16 v1, v94

    if-ge v0, v1, :cond_23

    move-object/from16 v0, v130

    move/from16 v1, v121

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Landroid/app/ActivityManager$RunningServiceInfo;

    .local v124, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v121, v121, 0x1

    goto :goto_1d

    .end local v94           #N:I
    .end local v121           #i:I
    .end local v124           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_22
    const/16 v94, -0x1

    goto :goto_1c

    .restart local v94       #N:I
    .restart local v121       #i:I
    :cond_23
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v59           #fl:I
    .end local v94           #N:I
    .end local v121           #i:I
    .end local v130           #list:Ljava/util/List;
    .end local v138           #maxNum:I
    :sswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v131

    .local v131, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v131           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v133

    .local v133, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v133           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v134

    .local v134, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v134           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v177

    .local v177, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v177

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15           #options:Landroid/os/Bundle;
    :cond_24
    const/4 v15, 0x0

    goto :goto_1e

    .end local v59           #fl:I
    .end local v177           #task:I
    :sswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v177

    .restart local v177       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v177

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v177           #task:I
    :sswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/16 v144, 0x1

    .local v144, nonRoot:Z
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v144

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v164

    .local v164, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_26

    const/4 v5, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v144           #nonRoot:Z
    .end local v164           #res:Z
    :cond_25
    const/16 v144, 0x0

    goto :goto_1f

    .restart local v144       #nonRoot:Z
    .restart local v164       #res:Z
    :cond_26
    const/4 v5, 0x0

    goto :goto_20

    .end local v49           #token:Landroid/os/IBinder;
    .end local v144           #nonRoot:Z
    .end local v164           #res:Z
    :sswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v177

    .restart local v177       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v177

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v177           #task:I
    :sswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    const/16 v146, 0x1

    .local v146, onlyRoot:Z
    :goto_21
    if-eqz v49, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v146

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v164

    .local v164, res:I
    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v146           #onlyRoot:Z
    .end local v164           #res:I
    :cond_27
    const/16 v146, 0x0

    goto :goto_21

    .restart local v146       #onlyRoot:Z
    :cond_28
    const/16 v164, -0x1

    goto :goto_22

    .end local v49           #token:Landroid/os/IBinder;
    .end local v146           #onlyRoot:Z
    :sswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v180, v5

    .restart local v180       #thumbnail:Landroid/graphics/Bitmap;
    :goto_23
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Ljava/lang/CharSequence;

    .restart local v115       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v180

    move-object/from16 v3, v115

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v115           #description:Ljava/lang/CharSequence;
    .end local v180           #thumbnail:Landroid/graphics/Bitmap;
    :cond_29
    const/16 v180, 0x0

    goto :goto_23

    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .local v143, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v170, 0x1

    .local v170, stable:Z
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v170

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Z)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v114

    .local v114, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v114, :cond_2b

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v114           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v170           #stable:Z
    :cond_2a
    const/16 v170, 0x0

    goto :goto_24

    .restart local v114       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v170       #stable:Z
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v114           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v143           #name:Ljava/lang/String;
    .end local v170           #stable:Z
    :sswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .restart local v143       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v114

    .restart local v114       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v114, :cond_2c

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_26
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .end local v49           #token:Landroid/os/IBinder;
    .end local v114           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v143           #name:Ljava/lang/String;
    :sswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v155

    .local v155, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v155           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .local v170, stable:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v181

    .local v181, unstable:I
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move/from16 v2, v170

    move/from16 v3, v181

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v164

    .local v164, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_2d

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2d
    const/4 v5, 0x0

    goto :goto_27

    .end local v104           #b:Landroid/os/IBinder;
    .end local v164           #res:Z
    .end local v170           #stable:I
    .end local v181           #unstable:I
    :sswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v170, 0x1

    .local v170, stable:Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move/from16 v2, v170

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v170           #stable:Z
    :cond_2e
    const/16 v170, 0x0

    goto :goto_28

    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .restart local v143       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v143           #name:Ljava/lang/String;
    :sswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/content/ComponentName;

    .local v113, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v149

    .local v149, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, v149

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v113           #comp:Landroid/content/ComponentName;
    .end local v149           #pi:Landroid/app/PendingIntent;
    :sswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .local v56, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v112

    .restart local v112       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, v112

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v112           #cn:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .restart local v56       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v164

    .local v164, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v164           #res:I
    :sswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .local v48, className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v171

    .local v171, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    move/from16 v3, v171

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v164

    .local v164, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_2f

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2f
    const/4 v5, 0x0

    goto :goto_29

    .end local v48           #className:Landroid/content/ComponentName;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v164           #res:Z
    .end local v171           #startId:I
    :sswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .restart local v48       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .restart local v50       #id:I
    const/16 v51, 0x0

    .local v51, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    .end local v51           #notification:Landroid/app/Notification;
    check-cast v51, Landroid/app/Notification;

    .restart local v51       #notification:Landroid/app/Notification;
    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v52, 0x1

    .local v52, removeNotification:Z
    :goto_2a
    move-object/from16 v47, p0

    invoke-virtual/range {v47 .. v52}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v52           #removeNotification:Z
    :cond_31
    const/16 v52, 0x0

    goto :goto_2a

    .end local v48           #className:Landroid/content/ComponentName;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v50           #id:I
    .end local v51           #notification:Landroid/app/Notification;
    :sswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .restart local v56       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .restart local v46       #userId:I
    invoke-static/range {v104 .. v104}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v58

    .local v58, conn:Landroid/app/IServiceConnection;
    move-object/from16 v53, p0

    move-object/from16 v54, v6

    move-object/from16 v55, v49

    move-object/from16 v57, v8

    move/from16 v60, v46

    invoke-virtual/range {v53 .. v60}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v164

    .local v164, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v46           #userId:I
    .end local v49           #token:Landroid/os/IBinder;
    .end local v56           #service:Landroid/content/Intent;
    .end local v58           #conn:Landroid/app/IServiceConnection;
    .end local v59           #fl:I
    .end local v104           #b:Landroid/os/IBinder;
    .end local v164           #res:I
    :sswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v58

    .restart local v58       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v164

    .local v164, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_32

    const/4 v5, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_32
    const/4 v5, 0x0

    goto :goto_2b

    .end local v58           #conn:Landroid/app/IServiceConnection;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v164           #res:Z
    :sswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v56

    .local v56, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v7           #intent:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v56           #service:Landroid/os/IBinder;
    :sswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    const/16 v117, 0x1

    .local v117, doRebind:Z
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v117

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v117           #doRebind:Z
    :cond_33
    const/16 v117, 0x0

    goto :goto_2c

    .end local v7           #intent:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .local v67, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v171

    .restart local v171       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v164

    .local v164, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v67

    move/from16 v3, v171

    move/from16 v4, v164

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v67           #type:I
    .end local v164           #res:I
    .end local v171           #startId:I
    :sswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .restart local v48       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v64

    .local v64, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v65

    .local v65, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v60, p0

    move-object/from16 v61, v48

    move-object/from16 v62, v13

    move/from16 v63, v59

    invoke-virtual/range {v60 .. v65}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v164

    .local v164, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_34

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_34
    const/4 v5, 0x0

    goto :goto_2d

    .end local v13           #profileFile:Ljava/lang/String;
    .end local v48           #className:Landroid/content/ComponentName;
    .end local v59           #fl:I
    .end local v64           #arguments:Landroid/os/Bundle;
    .end local v65           #w:Landroid/app/IInstrumentationWatcher;
    .end local v104           #b:Landroid/os/IBinder;
    .end local v164           #res:Z
    :sswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v166

    .local v166, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v166

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v40           #resultCode:I
    .end local v104           #b:Landroid/os/IBinder;
    .end local v166           #results:Landroid/os/Bundle;
    :sswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    .restart local v24       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .restart local v24       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v163

    .local v163, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v163

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v163           #requestedOrientation:I
    :sswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v162

    .local v162, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v162           #req:I
    :sswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v112

    .restart local v112       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, v112

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v112           #cn:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .restart local v67       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v72

    check-cast v72, [Landroid/content/Intent;

    .local v72, requestIntents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v73

    .local v73, requestResolvedTypes:[Ljava/lang/String;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_2f
    move-object/from16 v66, p0

    move-object/from16 v68, v18

    move-object/from16 v69, v49

    move-object/from16 v70, v10

    move/from16 v71, v11

    move/from16 v74, v59

    move-object/from16 v75, v15

    invoke-virtual/range {v66 .. v75}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v164

    .local v164, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_37

    invoke-interface/range {v164 .. v164}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15           #options:Landroid/os/Bundle;
    .end local v59           #fl:I
    .end local v72           #requestIntents:[Landroid/content/Intent;
    .end local v73           #requestResolvedTypes:[Ljava/lang/String;
    .end local v164           #res:Landroid/content/IIntentSender;
    :cond_35
    const/16 v72, 0x0

    .restart local v72       #requestIntents:[Landroid/content/Intent;
    const/16 v73, 0x0

    .restart local v73       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_2e

    .restart local v59       #fl:I
    :cond_36
    const/4 v15, 0x0

    goto :goto_2f

    .restart local v15       #options:Landroid/os/Bundle;
    .restart local v164       #res:Landroid/content/IIntentSender;
    :cond_37
    const/4 v5, 0x0

    goto :goto_30

    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v15           #options:Landroid/os/Bundle;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v59           #fl:I
    .end local v67           #type:I
    .end local v72           #requestIntents:[Landroid/content/Intent;
    .end local v73           #requestResolvedTypes:[Ljava/lang/String;
    .end local v164           #res:Landroid/content/IIntentSender;
    :sswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .local v157, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v157           #r:Landroid/content/IIntentSender;
    :sswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .restart local v157       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v164

    .local v164, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v157           #r:Landroid/content/IIntentSender;
    .end local v164           #res:Ljava/lang/String;
    :sswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .restart local v157       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v164

    .local v164, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v157           #r:Landroid/content/IIntentSender;
    .end local v164           #res:I
    :sswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .local v137, max:I
    move-object/from16 v0, p0

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v137           #max:I
    :sswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v129

    .local v129, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v129           #limit:I
    :sswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .local v150, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/16 v127, 0x1

    .local v127, isForeground:Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v150

    move/from16 v3, v127

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v127           #isForeground:Z
    :cond_38
    const/16 v127, 0x0

    goto :goto_31

    .end local v49           #token:Landroid/os/IBinder;
    .end local v150           #pid:I
    :sswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .restart local v21       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .restart local v150       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .local v81, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v150

    move/from16 v3, v81

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v164

    .restart local v164       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v21           #perm:Ljava/lang/String;
    .end local v81           #uid:I
    .end local v150           #pid:I
    .end local v164           #res:I
    :sswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .local v86, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .restart local v150       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .restart local v81       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .local v87, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move/from16 v2, v150

    move/from16 v3, v81

    move/from16 v4, v87

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v164

    .restart local v164       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v81           #uid:I
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v150           #pid:I
    .end local v164           #res:I
    :sswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v145

    .local v145, observer:Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .restart local v46       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v145

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v164

    .local v164, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_39

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_39
    const/4 v5, 0x0

    goto :goto_32

    .end local v18           #packageName:Ljava/lang/String;
    .end local v46           #userId:I
    .end local v145           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v164           #res:Z
    :sswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .local v85, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v86

    move/from16 v3, v87

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move/from16 v2, v87

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v185, 0x1

    .local v185, waiting:Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v185

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v185           #waiting:Z
    :cond_3a
    const/16 v185, 0x0

    goto :goto_33

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v140, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v140 .. v140}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .local v140, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, v140

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v140           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v86

    .restart local v86       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v148

    .local v148, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v148, :cond_3b

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v148

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .end local v86           #uri:Landroid/net/Uri;
    .end local v148           #pfd:Landroid/os/ParcelFileDescriptor;
    :sswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3c
    const/4 v5, 0x0

    goto :goto_35

    :sswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v153

    .local v153, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v187, 0x1

    .local v187, wfd:Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v147, 0x1

    .local v147, per:Z
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v153

    move/from16 v2, v187

    move/from16 v3, v147

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v147           #per:Z
    .end local v187           #wfd:Z
    :cond_3d
    const/16 v187, 0x0

    goto :goto_36

    .restart local v187       #wfd:Z
    :cond_3e
    const/16 v147, 0x0

    goto :goto_37

    .end local v153           #pn:Ljava/lang/String;
    .end local v187           #wfd:Z
    :sswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    const/16 v118, 0x1

    .local v118, enabled:Z
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v118           #enabled:Z
    :cond_3f
    const/16 v118, 0x0

    goto :goto_38

    :sswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v186

    .local v186, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v186           #watcher:Landroid/app/IActivityController;
    :sswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v126

    .local v126, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v126           #is:Landroid/content/IIntentSender;
    :sswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v151

    .local v151, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .local v158, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/16 v167, 0x1

    .local v167, secure:Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    move-object/from16 v2, v158

    move/from16 v3, v167

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_41

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v164           #res:Z
    .end local v167           #secure:Z
    :cond_40
    const/16 v167, 0x0

    goto :goto_39

    .restart local v164       #res:Z
    .restart local v167       #secure:Z
    :cond_41
    const/4 v5, 0x0

    goto :goto_3a

    .end local v151           #pids:[I
    .end local v158           #reason:Ljava/lang/String;
    .end local v164           #res:Z
    .end local v167           #secure:Z
    :sswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .restart local v158       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_42

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_42
    const/4 v5, 0x0

    goto :goto_3b

    .end local v158           #reason:Ljava/lang/String;
    .end local v164           #res:Z
    :sswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .local v152, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v111

    .local v111, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v98

    .local v98, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v123

    .local v123, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v111

    move-object/from16 v3, v98

    move-object/from16 v4, v123

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v98           #action:Ljava/lang/String;
    .end local v111           #cls:Ljava/lang/String;
    .end local v123           #indata:Ljava/lang/String;
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, app:Landroid/os/IBinder;
    new-instance v110, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .local v110, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/os/IBinder;
    .end local v110           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .local v175, tag:Ljava/lang/String;
    new-instance v110, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .restart local v110       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move-object/from16 v2, v110

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_43

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_43
    const/4 v5, 0x0

    goto :goto_3c

    .end local v6           #app:Landroid/os/IBinder;
    .end local v110           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v164           #res:Z
    .end local v175           #tag:Ljava/lang/String;
    :sswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v184

    .local v184, violationMask:I
    new-instance v124, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v124

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .local v124, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v184

    move-object/from16 v2, v124

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v6           #app:Landroid/os/IBinder;
    .end local v124           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v184           #violationMask:I
    :sswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .local v168, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v168           #sig:I
    :sswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v18           #packageName:Ljava/lang/String;
    :sswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v18           #packageName:Ljava/lang/String;
    :sswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v124, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v124 .. v124}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .local v124, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v124           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v24

    .local v24, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v24           #config:Landroid/content/pm/ConfigurationInfo;
    :sswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .local v75, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/16 v76, 0x1

    .local v76, start:Z
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .local v79, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .local v77, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v78

    .local v78, fd:Landroid/os/ParcelFileDescriptor;
    :goto_3e
    move-object/from16 v74, p0

    invoke-virtual/range {v74 .. v79}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_46

    const/4 v5, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v76           #start:Z
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v79           #profileType:I
    .end local v164           #res:Z
    :cond_44
    const/16 v76, 0x0

    goto :goto_3d

    .restart local v76       #start:Z
    .restart local v77       #path:Ljava/lang/String;
    .restart local v79       #profileType:I
    :cond_45
    const/16 v78, 0x0

    goto :goto_3e

    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v164       #res:Z
    :cond_46
    const/4 v5, 0x0

    goto :goto_3f

    .end local v75           #process:Ljava/lang/String;
    .end local v76           #start:Z
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v79           #profileType:I
    .end local v164           #res:Z
    :sswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_47

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_47
    const/4 v5, 0x0

    goto :goto_40

    .end local v164           #res:Z
    :sswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .local v56, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v106

    .local v106, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v106           #binder:Landroid/os/IBinder;
    :sswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Landroid/content/pm/ApplicationInfo;

    .local v124, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v105

    .local v105, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v174

    .local v174, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v174, :cond_48

    const/4 v5, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_48
    const/4 v5, 0x0

    goto :goto_41

    .end local v105           #backupRestoreMode:I
    .end local v124           #info:Landroid/content/pm/ApplicationInfo;
    .end local v174           #success:Z
    :sswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v99

    .local v99, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v99

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v18           #packageName:Ljava/lang/String;
    .end local v99           #agent:Landroid/os/IBinder;
    :sswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Landroid/content/pm/ApplicationInfo;

    .restart local v124       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v124           #info:Landroid/content/pm/ApplicationInfo;
    :sswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .restart local v81       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_42
    move-object/from16 v80, p0

    move-object/from16 v82, v7

    move-object/from16 v83, v8

    move-object/from16 v84, v9

    move-object/from16 v85, v10

    move/from16 v86, v11

    move/from16 v87, v12

    move-object/from16 v88, v15

    invoke-virtual/range {v80 .. v88}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v165

    .local v165, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15           #options:Landroid/os/Bundle;
    .end local v165           #result:I
    :cond_49
    const/4 v15, 0x0

    goto :goto_42

    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v81           #uid:I
    :sswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .restart local v152       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .restart local v81       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v81           #uid:I
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .restart local v158       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v158           #reason:Ljava/lang/String;
    :sswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v151

    .restart local v151       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v164

    .local v164, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v164

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v151           #pids:[I
    .end local v164           #res:[Landroid/os/Debug$MemoryInfo;
    :sswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v154

    .local v154, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .restart local v81       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v81           #uid:I
    .end local v154           #processName:Ljava/lang/String;
    :sswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v119

    .local v119, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v120

    .local v120, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v18

    move/from16 v3, v119

    move/from16 v4, v120

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v18           #packageName:Ljava/lang/String;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v119           #enterAnim:I
    .end local v120           #exitAnim:I
    :sswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v102

    .local v102, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v102, :cond_4a

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4a
    const/4 v5, 0x0

    goto :goto_43

    .end local v102           #areThey:Z
    :sswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v128

    .local v128, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_4b

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4b
    const/4 v5, 0x0

    goto :goto_44

    .end local v49           #token:Landroid/os/IBinder;
    .end local v128           #isit:Z
    :sswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_4c

    const/16 v122, 0x1

    .local v122, imm:Z
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v122           #imm:Z
    :cond_4c
    const/16 v122, 0x0

    goto :goto_45

    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v128

    .restart local v128       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_4d

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4d
    const/4 v5, 0x0

    goto :goto_46

    .end local v128           #isit:Z
    :sswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .restart local v81       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v125

    .local v125, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v139

    .local v139, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v81

    move/from16 v2, v125

    move-object/from16 v3, v18

    move-object/from16 v4, v139

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v18           #packageName:Ljava/lang/String;
    .end local v81           #uid:I
    .end local v125           #initialPid:I
    .end local v139           #message:Ljava/lang/String;
    :sswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .restart local v86       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v67

    .local v67, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v67           #type:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    :sswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .restart local v143       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    .local v21, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v21           #perm:Landroid/os/IBinder;
    .end local v143           #name:Ljava/lang/String;
    :sswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .local v83, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v84

    .local v84, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .restart local v85       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .restart local v87       #mode:I
    move-object/from16 v82, p0

    invoke-virtual/range {v82 .. v87}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v83           #owner:Landroid/os/IBinder;
    .end local v84           #fromUid:I
    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    :sswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .restart local v83       #owner:Landroid/os/IBinder;
    const/16 v86, 0x0

    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4e

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move-object/from16 v2, v86

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v83           #owner:Landroid/os/IBinder;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    :sswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    .local v109, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .restart local v85       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .local v141, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v109

    move-object/from16 v2, v85

    move-object/from16 v3, v86

    move/from16 v4, v141

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v164

    .local v164, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v109           #callingUid:I
    .end local v141           #modeFlags:I
    .end local v164           #res:I
    :sswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .restart local v75       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4f

    const/16 v135, 0x1

    .local v135, managed:Z
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .restart local v77       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v78

    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v135

    move-object/from16 v3, v77

    move-object/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v164

    .local v164, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_51

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v135           #managed:Z
    .end local v164           #res:Z
    :cond_4f
    const/16 v135, 0x0

    goto :goto_47

    .restart local v77       #path:Ljava/lang/String;
    .restart local v135       #managed:Z
    :cond_50
    const/16 v78, 0x0

    goto :goto_48

    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v164       #res:Z
    :cond_51
    const/4 v5, 0x0

    goto :goto_49

    .end local v75           #process:Ljava/lang/String;
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v135           #managed:Z
    .end local v164           #res:Z
    :sswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .restart local v81       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v90

    check-cast v90, [Landroid/content/Intent;

    .local v90, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v91

    .local v91, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4a
    move-object/from16 v88, p0

    move/from16 v89, v81

    move-object/from16 v92, v9

    move-object/from16 v93, v15

    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v165

    .restart local v165       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15           #options:Landroid/os/Bundle;
    .end local v165           #result:I
    :cond_52
    const/4 v15, 0x0

    goto :goto_4a

    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v81           #uid:I
    .end local v90           #intents:[Landroid/content/Intent;
    .end local v91           #resolvedTypes:[Ljava/lang/String;
    :sswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v104

    .restart local v104       #b:Landroid/os/IBinder;
    invoke-static/range {v104 .. v104}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v90

    check-cast v90, [Landroid/content/Intent;

    .restart local v90       #intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v91

    .restart local v91       #resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_53

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4b
    move-object/from16 v88, p0

    move-object/from16 v89, v6

    move-object/from16 v92, v9

    move-object/from16 v93, v15

    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v165

    .restart local v165       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v15           #options:Landroid/os/Bundle;
    .end local v165           #result:I
    :cond_53
    const/4 v15, 0x0

    goto :goto_4b

    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v90           #intents:[Landroid/content/Intent;
    .end local v91           #resolvedTypes:[Ljava/lang/String;
    .end local v104           #b:Landroid/os/IBinder;
    :sswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v87

    .restart local v87       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v87           #mode:I
    :sswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v87           #mode:I
    :sswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .restart local v152       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v87

    .restart local v87       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v87           #mode:I
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .restart local v152       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v87           #mode:I
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v183

    .local v183, userid:I
    move-object/from16 v0, p0

    move/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v165

    .local v165, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v165, :cond_54

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_54
    const/4 v5, 0x0

    goto :goto_4c

    .end local v165           #result:Z
    .end local v183           #userid:I
    :sswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v182

    .local v182, userInfo:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, v182

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v182           #userInfo:Landroid/content/pm/UserInfo;
    :sswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .local v178, taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .local v173, subTaskIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v178

    move/from16 v2, v173

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v165

    .restart local v165       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v165, :cond_55

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_55
    const/4 v5, 0x0

    goto :goto_4d

    .end local v165           #result:Z
    .end local v173           #subTaskIndex:I
    .end local v178           #taskId:I
    :sswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .restart local v178       #taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v178

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v165

    .restart local v165       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v165, :cond_56

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_56
    const/4 v5, 0x0

    goto :goto_4e

    .end local v59           #fl:I
    .end local v165           #result:Z
    .end local v178           #taskId:I
    :sswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v145

    .local v145, observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v145           #observer:Landroid/app/IProcessObserver;
    :sswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v145

    .restart local v145       #observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v145           #observer:Landroid/app/IProcessObserver;
    :sswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .restart local v152       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v103

    .local v103, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v103, :cond_57

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_57
    const/4 v5, 0x0

    goto :goto_4f

    .end local v103           #ask:Z
    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v152

    .restart local v152       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58

    const/16 v103, 0x1

    .restart local v103       #ask:Z
    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v103           #ask:Z
    :cond_58
    const/16 v103, 0x0

    goto :goto_50

    .end local v152           #pkg:Ljava/lang/String;
    :sswitch_88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .restart local v157       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_59

    const/4 v5, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_59
    const/4 v5, 0x0

    goto :goto_51

    .end local v157           #r:Landroid/content/IIntentSender;
    .end local v164           #res:Z
    :sswitch_89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v157

    .restart local v157       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_5a

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_5a
    const/4 v5, 0x0

    goto :goto_52

    .end local v157           #r:Landroid/content/IIntentSender;
    .end local v164           #res:Z
    :sswitch_8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .local v24, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_8b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v151

    .restart local v151       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v156

    .local v156, pss:[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v151           #pids:[I
    .end local v156           #pss:[J
    :sswitch_8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Ljava/lang/CharSequence;

    .local v142, msg:Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5b

    const/16 v101, 0x1

    .local v101, always:Z
    :goto_53
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move/from16 v2, v101

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v101           #always:Z
    :cond_5b
    const/16 v101, 0x0

    goto :goto_53

    .end local v142           #msg:Ljava/lang/CharSequence;
    :sswitch_8d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_8e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .local v116, destAffinity:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_5c

    const/4 v5, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_5c
    const/4 v5, 0x0

    goto :goto_54

    .end local v49           #token:Landroid/os/IBinder;
    .end local v116           #destAffinity:Ljava/lang/String;
    .end local v164           #res:Z
    :sswitch_8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v176

    check-cast v176, Landroid/content/Intent;

    .local v176, target:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .restart local v40       #resultCode:I
    const/16 v41, 0x0

    .local v41, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5d

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #resultData:Landroid/content/Intent;
    check-cast v41, Landroid/content/Intent;

    .restart local v41       #resultData:Landroid/content/Intent;
    :cond_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v176

    move/from16 v3, v40

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v164

    .restart local v164       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v164, :cond_5e

    const/4 v5, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_5e
    const/4 v5, 0x0

    goto :goto_55

    .end local v40           #resultCode:I
    .end local v41           #resultData:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v164           #res:Z
    .end local v176           #target:Landroid/content/Intent;
    :sswitch_90
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v164

    .local v164, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v164           #res:I
    :sswitch_91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v169

    .local v169, splitScreenZone:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    const/16 v100, 0x1

    .local v100, allInTask:Z
    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v169

    move/from16 v3, v100

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setWindowMode(Landroid/os/IBinder;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v100           #allInTask:Z
    :cond_5f
    const/16 v100, 0x0

    goto :goto_56

    .end local v49           #token:Landroid/os/IBinder;
    .end local v169           #splitScreenZone:I
    :sswitch_92
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getWindowMode(Landroid/os/IBinder;)I

    move-result v162

    .restart local v162       #req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v162           #req:I
    :sswitch_93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v162

    .local v162, req:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v162

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v162           #req:Landroid/os/Bundle;
    :sswitch_94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .restart local v49       #token:Landroid/os/IBinder;
    const-class v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v188

    check-cast v188, Landroid/os/Bundle;

    .local v188, winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v188

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v49           #token:Landroid/os/IBinder;
    .end local v188           #winInfo:Landroid/os/Bundle;
    :sswitch_95
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityPosition()Landroid/graphics/Rect;

    move-result-object v161

    .local v161, rect:Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v161

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v161           #rect:Landroid/graphics/Rect;
    :sswitch_96
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v179, Ljava/util/ArrayList;

    invoke-direct/range {v179 .. v179}, Ljava/util/ArrayList;-><init>()V

    .local v179, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .restart local v94       #N:I
    const/16 v121, 0x0

    .restart local v121       #i:I
    :goto_57
    move/from16 v0, v121

    move/from16 v1, v94

    if-ge v0, v1, :cond_60

    const-class v5, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v157

    check-cast v157, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v157, r:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v179

    move-object/from16 v1, v157

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v121, v121, 0x1

    goto :goto_57

    .end local v157           #r:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_60
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateTasksOrder(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v94           #N:I
    .end local v121           #i:I
    .end local v179           #tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :sswitch_97
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .local v95, _direction:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .local v97, _type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_61

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/graphics/Rect;

    .local v96, _rect:Landroid/graphics/Rect;
    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v95

    move/from16 v2, v97

    move-object/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->resizeArrangedWindow(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v161

    .restart local v161       #rect:Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v161

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v96           #_rect:Landroid/graphics/Rect;
    .end local v161           #rect:Landroid/graphics/Rect;
    :cond_61
    const/16 v96, 0x0

    .restart local v96       #_rect:Landroid/graphics/Rect;
    goto :goto_58

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_57
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_4b
        0xb -> :sswitch_5
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x14 -> :sswitch_11
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_20
        0x1b -> :sswitch_21
        0x1c -> :sswitch_22
        0x1d -> :sswitch_23
        0x1e -> :sswitch_25
        0x1f -> :sswitch_26
        0x20 -> :sswitch_6
        0x21 -> :sswitch_2a
        0x22 -> :sswitch_2b
        0x23 -> :sswitch_2c
        0x24 -> :sswitch_2f
        0x25 -> :sswitch_30
        0x26 -> :sswitch_31
        0x28 -> :sswitch_4c
        0x29 -> :sswitch_4d
        0x2a -> :sswitch_4f
        0x2b -> :sswitch_50
        0x2c -> :sswitch_34
        0x2d -> :sswitch_35
        0x2e -> :sswitch_36
        0x2f -> :sswitch_37
        0x30 -> :sswitch_2d
        0x31 -> :sswitch_3a
        0x32 -> :sswitch_3b
        0x33 -> :sswitch_40
        0x34 -> :sswitch_41
        0x35 -> :sswitch_43
        0x36 -> :sswitch_44
        0x37 -> :sswitch_46
        0x38 -> :sswitch_47
        0x39 -> :sswitch_51
        0x3a -> :sswitch_48
        0x3b -> :sswitch_5a
        0x3c -> :sswitch_17
        0x3d -> :sswitch_33
        0x3e -> :sswitch_13
        0x3f -> :sswitch_3c
        0x40 -> :sswitch_3d
        0x41 -> :sswitch_3e
        0x42 -> :sswitch_52
        0x43 -> :sswitch_4
        0x44 -> :sswitch_53
        0x45 -> :sswitch_28
        0x46 -> :sswitch_38
        0x47 -> :sswitch_39
        0x48 -> :sswitch_32
        0x49 -> :sswitch_42
        0x4a -> :sswitch_2e
        0x4b -> :sswitch_1f
        0x4c -> :sswitch_49
        0x4d -> :sswitch_1a
        0x4e -> :sswitch_45
        0x4f -> :sswitch_5d
        0x50 -> :sswitch_54
        0x51 -> :sswitch_19
        0x52 -> :sswitch_18
        0x53 -> :sswitch_1b
        0x54 -> :sswitch_5f
        0x55 -> :sswitch_64
        0x56 -> :sswitch_60
        0x57 -> :sswitch_61
        0x58 -> :sswitch_62
        0x59 -> :sswitch_63
        0x5a -> :sswitch_65
        0x5b -> :sswitch_66
        0x5c -> :sswitch_67
        0x5d -> :sswitch_3f
        0x5f -> :sswitch_68
        0x60 -> :sswitch_69
        0x61 -> :sswitch_6a
        0x62 -> :sswitch_6b
        0x63 -> :sswitch_6c
        0x64 -> :sswitch_3
        0x65 -> :sswitch_6d
        0x66 -> :sswitch_58
        0x67 -> :sswitch_5b
        0x68 -> :sswitch_6e
        0x69 -> :sswitch_1
        0x6a -> :sswitch_8
        0x6b -> :sswitch_2
        0x6c -> :sswitch_1c
        0x6d -> :sswitch_6f
        0x6e -> :sswitch_59
        0x6f -> :sswitch_70
        0x70 -> :sswitch_71
        0x71 -> :sswitch_72
        0x72 -> :sswitch_73
        0x73 -> :sswitch_74
        0x74 -> :sswitch_75
        0x75 -> :sswitch_76
        0x76 -> :sswitch_77
        0x77 -> :sswitch_78
        0x78 -> :sswitch_79
        0x79 -> :sswitch_7b
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_12
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_86
        0x81 -> :sswitch_87
        0x82 -> :sswitch_80
        0x83 -> :sswitch_82
        0x84 -> :sswitch_83
        0x85 -> :sswitch_84
        0x86 -> :sswitch_85
        0x87 -> :sswitch_88
        0x88 -> :sswitch_8a
        0x89 -> :sswitch_8b
        0x8a -> :sswitch_8c
        0x8b -> :sswitch_8d
        0x8c -> :sswitch_5c
        0x8d -> :sswitch_24
        0x8e -> :sswitch_29
        0x8f -> :sswitch_5e
        0x90 -> :sswitch_55
        0x91 -> :sswitch_81
        0x92 -> :sswitch_8e
        0x93 -> :sswitch_8f
        0x94 -> :sswitch_4e
        0x95 -> :sswitch_7
        0x96 -> :sswitch_90
        0x97 -> :sswitch_27
        0x98 -> :sswitch_89
        0x3e9 -> :sswitch_91
        0x3ea -> :sswitch_92
        0x3eb -> :sswitch_93
        0x3ec -> :sswitch_94
        0x3ed -> :sswitch_95
        0x3ee -> :sswitch_96
        0x3ef -> :sswitch_97
    .end sparse-switch
.end method
