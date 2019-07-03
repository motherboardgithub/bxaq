.class Lcom/fenghuo/qzj/WelcomeActivity$1$2;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 290
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$2;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 296
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$2;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$700(Lcom/fenghuo/qzj/WelcomeActivity;)V

    .line 297
    return-void
.end method
