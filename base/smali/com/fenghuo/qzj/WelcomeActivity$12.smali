.class Lcom/fenghuo/qzj/WelcomeActivity$12;
.super Ljava/lang/Thread;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fenghuo/qzj/WelcomeActivity;->execContinue()V
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
    .line 849
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 854
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 855
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 856
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 858
    const-string v1, "sh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/wifiscan_pie sm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v3}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1900(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/error_file 1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scandir_temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fenghuo/utils/ShellCommands;->doSuCmds(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_0
    :goto_0
    const-string v1, "true/false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 872
    :goto_1
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$2000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/lang/String;

    move-result-object v1

    .line 874
    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/fenghuo/qzj/WelcomeActivity;->access$802(Lcom/fenghuo/qzj/WelcomeActivity;Z)Z

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v4}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1800(Lcom/fenghuo/qzj/WelcomeActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 876
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 877
    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_1
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1, v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$2100(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;)V

    .line 880
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 881
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 882
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$2200(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 883
    return-void

    .line 860
    :cond_2
    const-string v1, "sh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/wifiscan sm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fenghuo/qzj/WelcomeActivity$12;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v3}, Lcom/fenghuo/qzj/WelcomeActivity;->access$1900(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/error_file 1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scandir_temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fenghuo/utils/ShellCommands;->doSuCmds(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 869
    :cond_3
    const-string v1, "sh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/getVirAccount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->absolutefilesPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/id.conf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fenghuo/utils/Global;->esnPath_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "app_account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fenghuo/utils/ShellCommands;->doSuCmds(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
