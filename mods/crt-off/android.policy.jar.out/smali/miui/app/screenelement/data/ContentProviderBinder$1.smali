.class Lmiui/app/screenelement/data/ContentProviderBinder$1;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/data/ContentProviderBinder;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder$1;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder$1;->this$0:Lmiui/app/screenelement/data/ContentProviderBinder;

    #calls: Lmiui/app/screenelement/data/ContentProviderBinder;->checkUpdate()V
    invoke-static {v0}, Lmiui/app/screenelement/data/ContentProviderBinder;->access$100(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    .line 275
    return-void
.end method