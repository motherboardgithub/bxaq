.class Lcom/fenghuo/qzj/WelcomeActivity$1$3;
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
    .line 300
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$3;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 306
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$3;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0, v4}, Lcom/fenghuo/qzj/WelcomeActivity;->access$802(Lcom/fenghuo/qzj/WelcomeActivity;Z)Z

    .line 307
    sget-object v0, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->DeleteFile(Ljava/lang/String;)Z

    .line 308
    sget-object v0, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->DeleteFile(Ljava/lang/String;)Z

    .line 309
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$3;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$400(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    sget-wide v0, Lcom/fenghuo/qzj/WelcomeActivity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 311
    sget-wide v0, Lcom/fenghuo/qzj/WelcomeActivity;->id:J

    invoke-static {v0, v1}, Lcom/fenghuo/http/HttpManager;->cancelConnection(J)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$3;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 314
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$3;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    iget-object v1, v1, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$900(Lcom/fenghuo/qzj/WelcomeActivity;Landroid/net/wifi/WifiManager;)I

    move-result v1

    .line 315
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 316
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 317
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 319
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 327
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1$3;->this$1:Lcom/fenghuo/qzj/WelcomeActivity$1;

    iget-object v0, v0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    const-string v3, "package:com.fiberhome.wifiserver"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    return-void

    .line 322
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method
