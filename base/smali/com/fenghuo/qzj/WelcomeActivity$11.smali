.class Lcom/fenghuo/qzj/WelcomeActivity$11;
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
    .line 763
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 768
    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v0

    invoke-static {}, Lcom/fenghuo/utils/Util;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fenghuo/utils/Global;->setLocalIP(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1200(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v2}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fenghuo/utils/Global;->getGlobal()Lcom/fenghuo/utils/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fenghuo/utils/Global;->getLocalIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$500(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v2}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$400(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 772
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$400(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 773
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1000(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$300(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/fenghuo/qzj/WelcomeActivity;->access$200(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;Z)V

    .line 776
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v4, v0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_count:I

    .line 777
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v4, v0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_position:I

    .line 778
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v4, v0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_count:I

    .line 779
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v4, v0, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_position:I

    .line 780
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0, v5}, Lcom/fenghuo/qzj/WelcomeActivity;->access$802(Lcom/fenghuo/qzj/WelcomeActivity;Z)Z

    .line 781
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$11;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1600(Lcom/fenghuo/qzj/WelcomeActivity;)V

    .line 784
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 785
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/fenghuo/qzj/WelcomeActivity$11$1;

    invoke-direct {v2, p0, v0}, Lcom/fenghuo/qzj/WelcomeActivity$11$1;-><init>(Lcom/fenghuo/qzj/WelcomeActivity$11;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 839
    return-void
.end method
