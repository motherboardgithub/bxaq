.class Lcom/fenghuo/qzj/VideoViewActivity$1;
.super Ljava/lang/Object;
.source "VideoViewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/qzj/VideoViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fenghuo/qzj/VideoViewActivity;


# direct methods
.method constructor <init>(Lcom/fenghuo/qzj/VideoViewActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fenghuo/qzj/VideoViewActivity$1;->this$0:Lcom/fenghuo/qzj/VideoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity$1;->this$0:Lcom/fenghuo/qzj/VideoViewActivity;

    invoke-virtual {v0}, Lcom/fenghuo/qzj/VideoViewActivity;->finish()V

    .line 53
    return-void
.end method
