.class Lcom/fenghuo/qzj/WelcomeActivity$8;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 712
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$8;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 717
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 718
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$8;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 719
    return-void
.end method
