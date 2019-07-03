.class Lcom/fenghuo/qzj/WelcomeActivity$10;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/qzj/WelcomeActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fenghuo/qzj/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/fenghuo/qzj/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$10;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 741
    sget-wide v0, Lcom/fenghuo/qzj/WelcomeActivity;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 742
    sget-wide v0, Lcom/fenghuo/qzj/WelcomeActivity;->id:J

    invoke-static {v0, v1}, Lcom/fenghuo/http/HttpManager;->cancelConnection(J)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$10;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 745
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$10;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$900(Lcom/fenghuo/qzj/WelcomeActivity;Landroid/net/wifi/WifiManager;)I

    move-result v1

    .line 746
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 747
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 748
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 750
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 758
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$10;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    const-string v3, "package:com.fiberhome.wifiserver"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 760
    return-void

    .line 753
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method
