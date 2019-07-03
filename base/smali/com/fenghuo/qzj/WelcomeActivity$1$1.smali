.class Lcom/fenghuo/qzj/WelcomeActivity$1$1;
.super Ljava/util/TimerTask;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/qzj/WelcomeActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;


# direct methods
.method constructor <init>(Lcom/fenghuo/qzj/WelcomeActivity$1;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$1;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$400(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    return-void
.end method
