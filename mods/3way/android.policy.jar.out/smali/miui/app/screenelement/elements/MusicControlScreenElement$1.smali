.class Lmiui/app/screenelement/elements/MusicControlScreenElement$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setTrackInfo(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;

    move-result-object v2

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, title:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, artist:Ljava/lang/String;
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #setter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2, v5}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$402(Lmiui/app/screenelement/elements/MusicControlScreenElement;Z)Z

    .line 198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmiui/app/screenelement/elements/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/app/screenelement/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 208
    :goto_1
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lmiui/app/screenelement/elements/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/app/screenelement/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_3
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;

    move-result-object v2

    const-string v3, "%s   %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    const-string v2, "other"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, extra:Ljava/lang/String;
    const-string v2, "meta_changed_track"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    invoke-direct {p0, p2}, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 172
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$000(Lmiui/app/screenelement/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 189
    .end local v1           #extra:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v1       #extra:Ljava/lang/String;
    :cond_1
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    const/4 v3, 0x1

    #calls: Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V
    invoke-static {v2, p2, v3}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$100(Lmiui/app/screenelement/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$200(Lmiui/app/screenelement/elements/MusicControlScreenElement;)V

    goto :goto_0

    .line 178
    .end local v1           #extra:Ljava/lang/String;
    :cond_3
    const-string v2, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    invoke-direct {p0, p2}, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 180
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$300(Lmiui/app/screenelement/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    :cond_4
    const-string v2, "com.miui.player.refreshprogress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    const-string v3, "blocking"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2, v3}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$402(Lmiui/app/screenelement/elements/MusicControlScreenElement;Z)Z

    goto :goto_0

    .line 183
    :cond_5
    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #getter for: Lmiui/app/screenelement/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/app/screenelement/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/elements/MusicControlScreenElement;)Lmiui/app/screenelement/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/screenelement/elements/TextScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_6

    .line 185
    invoke-direct {p0, p2}, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 187
    :cond_6
    iget-object v2, p0, Lmiui/app/screenelement/elements/MusicControlScreenElement$1;->this$0:Lmiui/app/screenelement/elements/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/app/screenelement/elements/MusicControlScreenElement;->access$000(Lmiui/app/screenelement/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0
.end method
