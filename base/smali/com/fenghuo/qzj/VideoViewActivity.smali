.class public Lcom/fenghuo/qzj/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"


# instance fields
.field private mediaController:Landroid/widget/MediaController;

.field path:Ljava/lang/String;

.field private tv:Landroid/widget/TextView;

.field private view:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/test.3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v1, 0x400

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/VideoViewActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/fenghuo/qzj/VideoViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 32
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/VideoViewActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->tv:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fenghuo/qzj/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/fenghuo/qzj/VideoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->view:Landroid/widget/VideoView;

    .line 36
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->mediaController:Landroid/widget/MediaController;

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/fenghuo/qzj/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/fenghuo/qzj/VideoViewActivity;->view:Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->view:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/fenghuo/qzj/VideoViewActivity;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 44
    iget-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->mediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/fenghuo/qzj/VideoViewActivity;->view:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 45
    iget-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->view:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 46
    iget-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->view:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 47
    iget-object v0, p0, Lcom/fenghuo/qzj/VideoViewActivity;->view:Landroid/widget/VideoView;

    new-instance v1, Lcom/fenghuo/qzj/VideoViewActivity$1;

    invoke-direct {v1, p0}, Lcom/fenghuo/qzj/VideoViewActivity$1;-><init>(Lcom/fenghuo/qzj/VideoViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 57
    :cond_0
    return-void
.end method
