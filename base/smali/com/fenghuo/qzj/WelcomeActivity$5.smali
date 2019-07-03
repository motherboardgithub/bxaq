.class Lcom/fenghuo/qzj/WelcomeActivity$5;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/qzj/WelcomeActivity;->showAlertDialog()V
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
    .line 644
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$5;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 647
    sget-object v0, Lcom/fenghuo/utils/Global;->absolutePath_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->DeleteFile(Ljava/lang/String;)Z

    .line 648
    sget-object v0, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->DeleteFile(Ljava/lang/String;)Z

    .line 649
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$5;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$400(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 653
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 654
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
